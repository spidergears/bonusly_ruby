module Bonusly
	class Company < Bonusly::HTTP
    class << self
      def show
        self.get("/companies/show").to_bonusly_repsonse
      end
    end
  end
end