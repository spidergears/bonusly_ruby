module Bonusly
  class Admin < Bonusly::HTTP
    class << self
      def create_bonus(**params)
        post('/bonuses', query: params).to_bonusly_repsonse
      end

      def update_company(**params)
        put('/companies/update', query: { data: params }).to_bonusly_repsonse
      end
    end
  end
end
