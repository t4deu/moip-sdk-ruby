module Moip2

  class Api
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def account
      Moip2::AccountApi.new(client)
    end

    def order
      Moip2::OrderApi.new(client)
    end

    def payment
      Moip2::PaymentApi.new(client)
    end

    def invoice
      Moip2::InvoiceApi.new(client)
    end

    def customer
      Moip2::CustomerApi.new(client)
    end

    def refund
      Moip2::RefundApi.new(client)
    end

    def keys
      Moip2::KeysApi.new(client)
    end

    def transfer
      Moip2::TransferApi.new(client)
    end
  end

end
