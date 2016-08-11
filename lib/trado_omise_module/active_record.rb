module TradoOmiseModule
    module ActiveRecord
        extend ActiveSupport::Concern

        module ClassMethods

            def has_omise_customer
                after_create :create_omise_customer_account

                def customer
                    Omise::Customer.retrieve(omise_id)
                end
                
                def create_omise_customer_account
                    customer = Omise::Customer.create(
                    email: email,
                    description: name
                    )
                    self.update_column(:omise_id, customer.id)
                end
            end
        end
    end
end