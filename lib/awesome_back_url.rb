require "awesome_back_url/railtie"

module AwesomeBackUrl
  module Helpers
    extend ActiveSupport::Concern

    included do
      helper_method :awesome_back_path
    end

    def awesome_back_path(path = request.referrer, only: nil, except: nil, fallback: :back)
      return fallback if path.blank?

      if only.present?
        raise "Only regexp is allowed for \"only\" parameter" unless only.is_a?(Regexp)
      end

      if except.present?
        raise "Only regexp is allowed for \"except\" parameter" unless except.is_a?(Regexp)
      end

      # by default we assume path is OK
      only_pass   = true
      except_pass = true

      only_pass   = path.match?(only) if only.present?
      except_pass = !path.match?(except) if except.present?

      if only_pass && except_pass
        path
      else
        fallback
      end
    end

    alias :awesome_back_url :awesome_back_path
  end
end
