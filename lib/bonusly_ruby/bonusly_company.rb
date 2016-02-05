module Bonusly
	class Company < Bonusly::HTTP
    class << self
      def show
        self.get("/companies/show").to_bonusly_repsonse
      end

      def update **params
        self.put("/companies/update", query: {data: params}).to_bonusly_repsonse
      end
    end
  end
end