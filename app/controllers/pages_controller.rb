# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    # debug, info, warn, error, fatal, unknown смотри в config/application.rb
    # также смотри config.log_level = :error в config/environments/development.rb
    logger.error('Debug logs')
  end
end
