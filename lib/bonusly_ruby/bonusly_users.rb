module Bonusly
  class Users < Bonusly::HTTP
    class << self
      def index(**params)
        get('/users', query: params).to_bonusly_repsonse
      end

      def me
        get('/users/me').to_bonusly_repsonse
      end

      def show(id:)
        get("/users/#{id}").to_bonusly_repsonse
      end

      def neighborhood(id:, days: 30, **params)
        get("/users/#{id}/neighborhood", query: params).to_bonusly_repsonse
      end

      def redemptions(id:, **params)
        get("/users/#{id}/redemptions", query: params).to_bonusly_repsonse
      end

      def bonuses(id: nil, **params)
        get("/users/#{id}/bonuses", query: params).to_bonusly_repsonse
      end

      def autocomplete(params = { search: '' })
        get('/users/autocomplete', query: params).to_bonusly_repsonse
      end

      def analytics(**params)
        get('/analytics/standouts', query: params).to_bonusly_repsonse
      end
    end
  end
end
