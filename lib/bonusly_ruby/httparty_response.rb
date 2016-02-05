module Bonusly
  class HTTParty::Response
    def to_bonusly_repsonse
      ::Bonusly::Response.new(self)
    end
  end
end