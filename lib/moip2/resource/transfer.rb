module Moip2
  module Resource

    class Transfer < SimpleDelegator

      attr_reader :client

      def initialize(client, response)
        super(response)
        @client = client
      end

    end

  end
end
