class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SetCurrentVisitor
  include TrackEvent

  before_action :track_event
end
