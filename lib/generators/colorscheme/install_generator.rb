require 'rails/generators/base'

module Colorscheme
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../../../", __FILE__)

    argument :lang, type: :string, default: "en", banner: "[ja|de|ru| ... ]"

    def copy_locale
      case lang
      when "en"
        copy_file "config/locales/en.yml", "config/locales/colorscheme.en.yml"
      when "ja"
        copy_file "config/locales/ja.yml", "config/locales/colorscheme.ja.yml"
      else
        create_file "config/locales/colorscheme.#{lang}.yml", <<EOS
#{lang}:
  errors:
    messages:
      invalid_color_scheme: REPLACE_WITH_YOUR_LANGUAGE
EOS
      end
    end
  end
end
