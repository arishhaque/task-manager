class ApplicationController < ActionController::Base
  before_action :log_request_info

  private

  def log_request_info
    @username = session[:username]
    Rails.logger.info(
      [
        "X-Request-Id: #{request.uuid}",
        "username: #{@username}"
      ].join(' | ')
    )
  end

  def logged_in?
    session[:username].present?
  end
end
