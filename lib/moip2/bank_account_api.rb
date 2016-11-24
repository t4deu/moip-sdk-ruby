module Moip2
  class BankAccountApi

    attr_reader :client

    def initialize(client)
      @client = client
    end

    def create(account_id, bank_account)
      Resource::BankAccount.new client.post("/v2/accounts/#{account_id}/bankaccounts", bank_account)
    end

    def update(id, bank_account)
      Resource::BankAccount.new client.put("/v2/bankaccounts/#{account_id}", bank_account)
    end

    def show(id)
      Resource::BankAccount.new client.get("/v2/bankaccounts/#{id}")
    end
  end
end
