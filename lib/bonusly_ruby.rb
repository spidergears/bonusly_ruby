require 'uri'
require 'json'
require 'httparty'

require "bonusly_ruby/version"

module BonuslyRuby
  class Bonusly
      include HTTParty

      class << self
        attr_accessor :config

        def company_info
          p self.get(request_url("companies/show"))          
        end

        def users
          p self.get(request_url("users"))
        end

        def recent_bonuses
          p self.get(request_url("bonuses"))
        end

        private

        def request_url path
          "https://bonus.ly/api/v1/#{path}?access_token=XXXXXXX"
        end
      end
    end
end
