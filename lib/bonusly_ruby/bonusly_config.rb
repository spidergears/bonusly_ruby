module Bonusly
  class Config
    class << self
      attr_accessor :config_block

      def configure_with(&block)
        @config_block = block
      end
    end
  end
end

# Bonusly::Config.configure_with do |user_id, role|
#   Token.where(user_id: user_id, role: role)
# end

# Bonusly::Config.configure_with do
#     "asdfgh"
# end

# Bonusly::Config.configure_with do |role|
#   case role
#   when "user"
#     "wdsfghj"
#   when "admin"
#     "uytrew"
#   end
# end
