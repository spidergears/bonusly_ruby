module Bonusly
	class Redemptions < Bonusly::HTTP
    class << self
      def show id:
        self.get("/redemptions/#{id}").to_bonusly_repsonse
      end
    end
  end
end