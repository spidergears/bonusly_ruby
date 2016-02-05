module Bonusly
	class Bonuses < Bonusly::HTTP
    class << self
      def index **params
        self.get("/bonuses", query: params).to_bonusly_repsonse
      end

      def show id:
        self.get("/bonuses/#{id}").to_bonusly_repsonse
      end

      def create **params
        self.post("/bonuses", query: params).to_bonusly_repsonse
      end

      def atom_feed **params
        self.get("/bonuses.atom", query: params).parsed_response
      end
    end
  end
end