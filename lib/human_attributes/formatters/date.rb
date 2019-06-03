module HumanAttributes
  module Formatters
    class Date < Base
      def apply(_instance, value, method_name)
        I18n.l(value.to_date, options)
      rescue
        nil
      end
    end
  end
end
