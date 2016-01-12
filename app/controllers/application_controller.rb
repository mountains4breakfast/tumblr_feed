class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :consumer_key, :secret_key

  private
    def consumer_key
      @consumer_key ||= ENV['CONSUMER_KEY']
    end

    def secret_key
        @secret_key ||= ENV['SECRET_KEY']
    end
end
