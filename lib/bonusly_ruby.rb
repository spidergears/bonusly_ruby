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

        #Company Api
        def company_info 
          self.get(request_url("companies/show")).to_bonusly_repsonse
        end

        #Users Api
        def users **params
          self.get(request_url("users"), query: params).to_bonusly_repsonse
        end

        def me
          self.get(request_url("users/me")).to_bonusly_repsonse
        end

        def user id:
          self.get(request_url("users/#{id}")).to_bonusly_repsonse
        end

        def neighborhood id:, days: 30, **params
          self.get(request_url("/users/#{id}/neighborhood"), query: params).to_bonusly_repsonse
        end

        def redemptions id:, **params
          self.get(request_url("users/#{id}/redemptions"), query: params).to_bonusly_repsonse
        end

        def bonuses id: nil, **params
          self.get(request_url("users/#{id}/bonuses"), query: params).to_bonusly_repsonse
        end

        def autocomplete params={search: ""}
          self.get(request_url("users/autocomplete"), query: params).to_bonusly_repsonse
        end

        def analytics **params
          self.get(request_url("analytics/standouts"), query: params).to_bonusly_repsonse
        end

        private

        def request_url path
          "https://bonus.ly/api/v1/#{path}?access_token=XXXXXXX"
        end
      end
    end
end
