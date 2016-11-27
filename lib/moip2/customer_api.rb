module Moip2

  class CustomerApi
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def base_path
      "/v2/customers"
    end

    def show(customer_external_id)
      Resource::Customer.new client, client.get("#{base_path}/#{customer_external_id}")
    end

    def create(customer)
      Resource::Customer.new client, client.post(base_path, customer)
    end


    def add_credit_card(customer_id, card)
      Resource::CreditCard.new client, client.post("#{base_path}/#{customer_id}/fundinginstruments", card)
    end
  end

end
