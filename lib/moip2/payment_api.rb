module Moip2
  class PaymentApi

    attr_reader :client

    def initialize(client)
      @client = client
    end

    def create(order_id, payment)
      Resource::Payment.new client.post("/v2/orders/#{order_id}/payments", payment)
    end

    def show(id)
      Resource::Payment.new client.get("/v2/payments/#{id}")
    end

    def capture(id)
      Resource::Payment.new client.post("/v2/payments/#{id}/capture", {})
    end

    def cancel(id)
      Resource::Payment.new client.post("/v2/payments/#{id}/void", {})
    end
  end
end
