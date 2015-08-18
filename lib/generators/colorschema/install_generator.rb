require 'rails/generators/base'

module Colorschema
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../../../", __FILE__)

    argument :lang, type: :string, default: "en", banner: "[ja|de|ru| ... ]"

    def copy_locale
      case lang
      when "en"
        copy_file "config/locales/en.yml", "config/locales/colorschema.en.yml"
      when "ja"
        copy_file "config/locales/ja.yml", "config/locales/colorschema.ja.yml"
      else
        create_file "config/locales/colorschema.#{lang}.yml", <<EOS
#{lang}:
  errors:
    messages:
      invalid_color_schema: REPLACE_WITH_YOUR_LANGUAGE
EOS
      end
    end
  end
end
