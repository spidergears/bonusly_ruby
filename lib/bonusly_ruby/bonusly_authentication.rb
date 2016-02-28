module Bonusly
  class Authentication < Bonusly::HTTP
    class << self
      def api_key(**params)
        post("/sessions", query: params).headers["x-bonusly-authentication-token"]
      end
    end
  end
end
