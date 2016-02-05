require 'uri'
require 'json'
require 'httparty'

require "bonusly_ruby/version"

class HTTParty::Response
  def to_bonusly_repsonse
    ::BonuslyRuby::BonuslyResponse.new(self)
  end
end

module BonuslyRuby

  class BonuslyResponse
    attr_accessor :success, :result, :message
    def initialize response_hash
      @success = response_hash["success"]
      @result = response_hash["result"]
      @message = response_hash["message"]
    end
  end

  class Bonusly
      include HTTParty

      class << self
        attr_accessor :config

        def company_info
          self.get(request_url("companies/show")).to_bonusly_repsonse
        end

        def users
          self.get(request_url("users")).to_bonusly_repsonse
        end

        def recent_bonuses
          self.get(request_url("bonuses")).to_bonusly_repsonse
        end

        private

        def request_url path
          "https://bonus.ly/api/v1/#{path}?access_token=XXXXXXX"
        end
      end
    end
end
