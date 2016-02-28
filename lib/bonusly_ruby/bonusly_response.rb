module Bonusly
  class Response
    attr_accessor :success, :result, :message
    def initialize(response_hash)
      @success = response_hash['success']
      @result = JSON.parse(response_hash['result'], object_class: OpenStruct) rescue nil
      @message = response_hash['message']
    end
  end
end
