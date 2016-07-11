module TradoOmiseModule
end

require 'trado_paypal_module/engine'
require 'trado_paypal_module/version'
require 'trado_paypal_module/active_record'
require 'trado_paypal_module/omiser'

ActiveRecord::Base.send(:include, TradoOmiseModule::ActiveRecord)
