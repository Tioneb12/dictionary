class ApplicationController < ActionController::Base
  before_action :set_default_request_format

  private

  def set_default_request_format
    request.format = :html
  end

end
