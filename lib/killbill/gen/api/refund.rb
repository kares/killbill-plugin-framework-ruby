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

      java_package 'org.killbill.billing.payment.api'
      class Refund

        include org.killbill.billing.payment.api.Refund

        attr_accessor :id, :created_date, :updated_date, :payment_id, :is_adjusted, :refund_amount, :currency, :effective_date, :refund_status, :refund_info_plugin

        def initialize()
        end

        def to_java()
          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for payment_id [type = java.util.UUID]
          @payment_id = java.util.UUID.fromString(@payment_id.to_s) unless @payment_id.nil?

          # conversion for is_adjusted [type = boolean]
          @is_adjusted = @is_adjusted.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_adjusted)

          # conversion for refund_amount [type = java.math.BigDecimal]
          if @refund_amount.nil?
            @refund_amount = java.math.BigDecimal::ZERO
          else
            @refund_amount = java.math.BigDecimal.new(@refund_amount.to_s)
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = Java::org.killbill.billing.catalog.api.Currency.value_of("#{@currency.to_s}") unless @currency.nil?

          # conversion for effective_date [type = org.joda.time.DateTime]
          if !@effective_date.nil?
            @effective_date =  (@effective_date.kind_of? Time) ? DateTime.parse(@effective_date.to_s) : @effective_date
            @effective_date = Java::org.joda.time.DateTime.new(@effective_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for refund_status [type = org.killbill.billing.payment.api.RefundStatus]
          @refund_status = Java::org.killbill.billing.payment.api.RefundStatus.value_of("#{@refund_status.to_s}") unless @refund_status.nil?

          # conversion for refund_info_plugin [type = org.killbill.billing.payment.plugin.api.PaymentTransactionInfoPlugin]
          @refund_info_plugin = @refund_info_plugin.to_java unless @refund_info_plugin.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for payment_id [type = java.util.UUID]
          @payment_id = j_obj.payment_id
          @payment_id = @payment_id.nil? ? nil : @payment_id.to_s

          # conversion for is_adjusted [type = boolean]
          @is_adjusted = j_obj.is_adjusted
          if @is_adjusted.nil?
            @is_adjusted = false
          else
            tmp_bool = (@is_adjusted.java_kind_of? java.lang.Boolean) ? @is_adjusted.boolean_value : @is_adjusted
            @is_adjusted = tmp_bool ? true : false
          end

          # conversion for refund_amount [type = java.math.BigDecimal]
          @refund_amount = j_obj.refund_amount
          @refund_amount = @refund_amount.nil? ? 0 : BigDecimal.new(@refund_amount.to_s)

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for effective_date [type = org.joda.time.DateTime]
          @effective_date = j_obj.effective_date
          if !@effective_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@effective_date)
            @effective_date = DateTime.iso8601(str)
          end

          # conversion for refund_status [type = org.killbill.billing.payment.api.RefundStatus]
          @refund_status = j_obj.refund_status
          @refund_status = @refund_status.to_s.to_sym unless @refund_status.nil?

          # conversion for refund_info_plugin [type = org.killbill.billing.payment.plugin.api.PaymentTransactionInfoPlugin]
          @refund_info_plugin = j_obj.refund_info_plugin
          @refund_info_plugin = Killbill::Plugin::Model::PaymentTransactionInfoPlugin.new.to_ruby(@refund_info_plugin) unless @refund_info_plugin.nil?
          self
        end

      end
    end
  end
end
