module HumanAttributes
  module Formatters
    class Boolean < Base
      def apply(_instance, value, method_name)
        key = !!value ? 'true' : 'false'
        name = method_name.gsub('human_', '')
        I18n.t("boolean.#{ _instance.class.name.parameterize.underscore }.#{ name }.#{ key }",
               default: I18n.t("boolean.#{key}"))
      end
    end
  end
end
