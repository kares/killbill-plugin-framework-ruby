###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                                                                                 #
#      Ning licenses this file to you under the Apache License, version 2.0       #
#      (the "License"); you may not use this file except in compliance with the   #
#      License.  You may obtain a copy of the License at:                         #
#                                                                                 #
#          http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                                 #
#      Unless required by applicable law or agreed to in writing, software        #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  #
#      License for the specific language governing permissions and limitations    #
#      under the License.                                                         #
#                                                                                 #
###################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.payment.plugin.api'
      class HostedPaymentPageDescriptorFields

        include org.killbill.billing.payment.plugin.api.HostedPaymentPageDescriptorFields

        attr_accessor :amount, :order, :credential2, :credential3, :credential4, :transaction_type, :auth_code, :account_name, :notify_url, :return_url, :forward_url, :cancel_return_url, :redirect_param, :description, :tax, :shipping

        def initialize()
        end

        def to_java()
          # conversion for amount [type = java.lang.String]
          @amount = @amount.to_s unless @amount.nil?

          # conversion for order [type = java.lang.String]
          @order = @order.to_s unless @order.nil?

          # conversion for credential2 [type = java.lang.String]
          @credential2 = @credential2.to_s unless @credential2.nil?

          # conversion for credential3 [type = java.lang.String]
          @credential3 = @credential3.to_s unless @credential3.nil?

          # conversion for credential4 [type = java.lang.String]
          @credential4 = @credential4.to_s unless @credential4.nil?

          # conversion for transaction_type [type = java.lang.String]
          @transaction_type = @transaction_type.to_s unless @transaction_type.nil?

          # conversion for auth_code [type = java.lang.String]
          @auth_code = @auth_code.to_s unless @auth_code.nil?

          # conversion for account_name [type = java.lang.String]
          @account_name = @account_name.to_s unless @account_name.nil?

          # conversion for notify_url [type = java.lang.String]
          @notify_url = @notify_url.to_s unless @notify_url.nil?

          # conversion for return_url [type = java.lang.String]
          @return_url = @return_url.to_s unless @return_url.nil?

          # conversion for forward_url [type = java.lang.String]
          @forward_url = @forward_url.to_s unless @forward_url.nil?

          # conversion for cancel_return_url [type = java.lang.String]
          @cancel_return_url = @cancel_return_url.to_s unless @cancel_return_url.nil?

          # conversion for redirect_param [type = java.lang.String]
          @redirect_param = @redirect_param.to_s unless @redirect_param.nil?

          # conversion for description [type = java.lang.String]
          @description = @description.to_s unless @description.nil?

          # conversion for tax [type = java.lang.String]
          @tax = @tax.to_s unless @tax.nil?

          # conversion for shipping [type = java.lang.String]
          @shipping = @shipping.to_s unless @shipping.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for amount [type = java.lang.String]
          @amount = j_obj.amount

          # conversion for order [type = java.lang.String]
          @order = j_obj.order

          # conversion for credential2 [type = java.lang.String]
          @credential2 = j_obj.credential2

          # conversion for credential3 [type = java.lang.String]
          @credential3 = j_obj.credential3

          # conversion for credential4 [type = java.lang.String]
          @credential4 = j_obj.credential4

          # conversion for transaction_type [type = java.lang.String]
          @transaction_type = j_obj.transaction_type

          # conversion for auth_code [type = java.lang.String]
          @auth_code = j_obj.auth_code

          # conversion for account_name [type = java.lang.String]
          @account_name = j_obj.account_name

          # conversion for notify_url [type = java.lang.String]
          @notify_url = j_obj.notify_url

          # conversion for return_url [type = java.lang.String]
          @return_url = j_obj.return_url

          # conversion for forward_url [type = java.lang.String]
          @forward_url = j_obj.forward_url

          # conversion for cancel_return_url [type = java.lang.String]
          @cancel_return_url = j_obj.cancel_return_url

          # conversion for redirect_param [type = java.lang.String]
          @redirect_param = j_obj.redirect_param

          # conversion for description [type = java.lang.String]
          @description = j_obj.description

          # conversion for tax [type = java.lang.String]
          @tax = j_obj.tax

          # conversion for shipping [type = java.lang.String]
          @shipping = j_obj.shipping
          self
        end

      end
    end
  end
end