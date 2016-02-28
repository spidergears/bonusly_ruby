module Bonusly
  class Redemptions < Bonusly::HTTP
    class << self
      def show(id:)
        get("/redemptions/#{id}").to_bonusly_repsonse
      end
    end
  end
end
