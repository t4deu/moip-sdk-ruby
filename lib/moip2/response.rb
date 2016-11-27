module Moip2

  class Response < SimpleDelegator
    attr_reader :resp

    def initialize(resp, json)
      @json = json
      super(RecursiveOpenStruct.new(json, :recurse_over_arrays => true))
      @resp = resp
    end

    def success?
      (200..299).include? @resp.code.to_i
    end

    def client_error?
      (400..499).include? @resp.code.to_i
    end

    def raw
      @json
    end
  end

end
