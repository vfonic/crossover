class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  include ActionController::ImplicitRender

  # protect_from_forgery with: :null_session
end
