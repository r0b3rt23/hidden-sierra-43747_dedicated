#app/models/spree/gateway/foopay.rb

class Spree::Gateway::Dragonpay < Spree::Gateway
  def provider_class
    Spree::Gateway::Dragonpay
  end
  def payment_source_class
    Spree::CreditCard
  end

  def method_type
    'dragonpay' 
  end

  def purchase(amount, transaction_details, options = {})
    ActiveMerchant::Billing::Response.new(true, 'success', {}, {})
  end
end
