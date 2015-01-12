#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.payment.plugin.api'

      class PaymentTransactionInfoPlugin

        include org.killbill.billing.payment.plugin.api.PaymentTransactionInfoPlugin

        java_import org.killbill.billing.catalog.api.Currency
        java_import org.killbill.billing.payment.api.TransactionType
        java_import org.killbill.billing.payment.plugin.api.PaymentPluginStatus

        attr_accessor :kb_payment_id, :kb_transaction_payment_id, :transaction_type, :amount, :currency, :created_date, :effective_date, :status, :gateway_error, :gateway_error_code, :first_payment_reference_id, :second_payment_reference_id, :properties

        def initialize()
        end

        def to_java()
          # conversion for kb_payment_id [type = java.util.UUID]
          @kb_payment_id = java.util.UUID.fromString(@kb_payment_id.to_s) unless @kb_payment_id.nil?

          # conversion for kb_transaction_payment_id [type = java.util.UUID]
          @kb_transaction_payment_id = java.util.UUID.fromString(@kb_transaction_payment_id.to_s) unless @kb_transaction_payment_id.nil?

          # conversion for transaction_type [type = org.killbill.billing.payment.api.TransactionType]
          @transaction_type = Java::JavaLang::Enum.value_of(TransactionType.java_class, @transaction_type.to_s) unless @transaction_type.nil?

          # conversion for amount [type = java.math.BigDecimal]
          if @amount.nil?
            @amount = java.math.BigDecimal::ZERO
          else
            @amount = java.math.BigDecimal.new(@amount.to_s)
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = Java::JavaLang::Enum.value_of(Currency.java_class, @currency.to_s) unless @currency.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for effective_date [type = org.joda.time.DateTime]
          if !@effective_date.nil?
            @effective_date =  (@effective_date.kind_of? Time) ? DateTime.parse(@effective_date.to_s) : @effective_date
            @effective_date = org.joda.time.DateTime.new(@effective_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for status [type = org.killbill.billing.payment.plugin.api.PaymentPluginStatus]
          @status = Java::JavaLang::Enum.value_of(PaymentPluginStatus.java_class, @status.to_s) unless @status.nil?

          # conversion for gateway_error [type = java.lang.String]
          @gateway_error = @gateway_error.to_s unless @gateway_error.nil?

          # conversion for gateway_error_code [type = java.lang.String]
          @gateway_error_code = @gateway_error_code.to_s unless @gateway_error_code.nil?

          # conversion for first_payment_reference_id [type = java.lang.String]
          @first_payment_reference_id = @first_payment_reference_id.to_s unless @first_payment_reference_id.nil?

          # conversion for second_payment_reference_id [type = java.lang.String]
          @second_payment_reference_id = @second_payment_reference_id.to_s unless @second_payment_reference_id.nil?

          # conversion for properties [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @properties = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for kb_payment_id [type = java.util.UUID]
          @kb_payment_id = j_obj.kb_payment_id
          @kb_payment_id = @kb_payment_id.nil? ? nil : @kb_payment_id.to_s

          # conversion for kb_transaction_payment_id [type = java.util.UUID]
          @kb_transaction_payment_id = j_obj.kb_transaction_payment_id
          @kb_transaction_payment_id = @kb_transaction_payment_id.nil? ? nil : @kb_transaction_payment_id.to_s

          # conversion for transaction_type [type = org.killbill.billing.payment.api.TransactionType]
          @transaction_type = j_obj.transaction_type
          @transaction_type = @transaction_type.to_s.to_sym unless @transaction_type.nil?

          # conversion for amount [type = java.math.BigDecimal]
          @amount = j_obj.amount
          @amount = @amount.nil? ? 0 : BigDecimal.new(@amount.to_s)

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for effective_date [type = org.joda.time.DateTime]
          @effective_date = j_obj.effective_date
          if !@effective_date.nil?
            fmt = org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@effective_date)
            @effective_date = DateTime.iso8601(str)
          end

          # conversion for status [type = org.killbill.billing.payment.plugin.api.PaymentPluginStatus]
          @status = j_obj.status
          @status = @status.to_s.to_sym unless @status.nil?

          # conversion for gateway_error [type = java.lang.String]
          @gateway_error = j_obj.gateway_error

          # conversion for gateway_error_code [type = java.lang.String]
          @gateway_error_code = j_obj.gateway_error_code

          # conversion for first_payment_reference_id [type = java.lang.String]
          @first_payment_reference_id = j_obj.first_payment_reference_id

          # conversion for second_payment_reference_id [type = java.lang.String]
          @second_payment_reference_id = j_obj.second_payment_reference_id

          # conversion for properties [type = java.util.List]
          @properties = ( j_obj.properties || [] ).map do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            m
          end
          self
        end

      end
    end
  end
end
