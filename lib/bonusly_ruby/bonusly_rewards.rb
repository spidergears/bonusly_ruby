module Bonusly
  class Rewards < Bonusly::HTTP
    class << self
      def index(**params)
        get('/rewards', query: params).to_bonusly_repsonse
      end

      def show(id:)
        get("/rewards/#{id}").to_bonusly_repsonse
      end
    end
  end
end
