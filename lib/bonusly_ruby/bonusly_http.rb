module Bonusly
  class HTTP
	  include HTTParty
	  base_uri 'https://bonus.ly/api/v1/'
	  default_params access_token: "6f14cafbfc1dbb0efcf1b18398dcd125"
	end
end