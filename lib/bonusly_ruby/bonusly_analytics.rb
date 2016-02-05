module Bonusly
	class Analytics < Bonusly::HTTP
    class << self
      def standouts **params
        self.get("/analytics/standouts", query: params).to_bonusly_repsonse
      end
    end
  end
end