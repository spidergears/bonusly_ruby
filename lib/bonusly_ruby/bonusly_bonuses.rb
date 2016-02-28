module Bonusly
  class Bonuses < Bonusly::HTTP
    class << self
      def index(**params)
        get("/bonuses", query: params).to_bonusly_repsonse
      end

      def show(id:)
        get("/bonuses/#{id}").to_bonusly_repsonse
      end

      def create(**params)
        post('/bonuses', query: params).to_bonusly_repsonse
      end

      def atom_feed(**params)
        get('/bonuses.atom', query: params).parsed_response
      end
    end
  end
end
