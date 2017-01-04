module Moip2
  class TransferApi

    attr_reader :client

    def initialize(client)
      @client = client
    end

    def create(account_id, amount)
      Resource::Transfer.new client, client.post("/v2/transfers", {
        amount: amount,
        transferInstrument: {
          method: "MOIP_ACCOUNT",
          moipAccount: {
            id: account_id
          }
        }
      })
    end
  end
end
