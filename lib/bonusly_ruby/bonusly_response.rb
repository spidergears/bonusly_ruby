module Bonusly
  class Response
    attr_accessor :success, :result, :message
    def initialize response_hash
      @success = response_hash["success"]
      @result = response_hash["result"]
      @message = response_hash["message"]
    end
  end
end