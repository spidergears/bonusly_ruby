module Bonusly
  class HTTP
	  include HTTParty
	  base_uri 'https://bonus.ly/api/v1/'
	  default_params access_token: "XXX"
	end
end