require 'logger'

module Killbill
  module Plugin
    module ActiveMerchant
      mattr_reader :config
      mattr_reader :currency_conversions
      mattr_reader :gateways
      mattr_reader :initialized
      mattr_reader :kb_apis
      mattr_reader :logger

      def self.initialize!(gateway_builder, gateway_name, logger, config_file, kb_apis)
        @@config = Properties.new(config_file)
        @@config.parse!

        @@logger           = logger
        @@logger.log_level = Logger::DEBUG if (@@config[:logger] || {})[:debug]

        @@currency_conversions = @@config[:currency_conversions]
        @@kb_apis              = kb_apis

        @@gateways      = {}
        gateway_configs = @@config[gateway_name.to_sym]
        if gateway_configs.is_a?(Array)
          default_gateway = nil
          gateway_configs.each_with_index do |gateway_config, idx|
            gateway_account_id = gateway_config[:account_id]
            if gateway_account_id.nil?
              @@logger.warn "Skipping config #{gateway_config} -- missing :account_id"
            else
              @@gateways[gateway_account_id.to_sym] = Gateway.wrap(gateway_builder, logger, gateway_config)
              default_gateway                       = @@gateways[gateway_account_id.to_sym] if idx == 0
            end
          end
          @@gateways[:default] = default_gateway if @@gateways[:default].nil?
        else
          @@gateways[:default] = Gateway.wrap(gateway_builder, logger, gateway_configs)
        end

        if defined?(JRUBY_VERSION)
          begin
            # See https://github.com/jruby/activerecord-jdbc-adapter/issues/302
            require 'jdbc/mysql'
            ::Jdbc::MySQL.load_driver(:require) if ::Jdbc::MySQL.respond_to?(:load_driver)
          rescue => e
            @@logger.warn "Unable to load the JDBC driver: #{e}"
          end
        end

        begin
          require 'active_record'
          ::ActiveRecord::Base.establish_connection(@@config[:database])
          ::ActiveRecord::Base.logger = @@logger
        rescue => e
          @@logger.warn "Unable to establish a database connection: #{e}"
        end

        # Configure the ActiveMerchant HTTP backend
        connection_type = (@@config[:active_merchant] || {})[:connection_type]
        if connection_type == :typhoeus
          require 'killbill/ext/active_merchant/typhoeus_connection'
        end

        @@initialized = true
      end

      def self.converted_currency(currency)
        currency_sym = currency.to_s.upcase.to_sym
        @@currency_conversions && @@currency_conversions[currency_sym]
      end
    end
  end
end
