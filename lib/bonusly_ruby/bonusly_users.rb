module Bonusly
	class Users < Bonusly::HTTP
    class << self
      def index **params
        self.get("/users", query: params).to_bonusly_repsonse
      end

      def me
        self.get("/users/me").to_bonusly_repsonse
      end

      def show id:
        self.get("/users/#{id}").to_bonusly_repsonse
      end

      def neighborhood id:, days: 30, **params
        self.get("/users/#{id}/neighborhood", query: params).to_bonusly_repsonse
      end

      def redemptions id:, **params
        self.get("/users/#{id}/redemptions", query: params).to_bonusly_repsonse
      end

      def bonuses id: nil, **params
        self.get("/users/#{id}/bonuses", query: params).to_bonusly_repsonse
      end

      def autocomplete params={search: ""}
        self.get("/users/autocomplete", query: params).to_bonusly_repsonse
      end

      def analytics **params
        self.get("/analytics/standouts", query: params).to_bonusly_repsonse
      end

      def token
        access_token: ::Bonusly::Config.config_block.call()
      end
    end
  end
end