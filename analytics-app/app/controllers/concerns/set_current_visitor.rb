module SetCurrentVisitor
  extend ActiveSupport::Concern

  included do
    before_action :set_current_visitor
  end

  private

  def set_current_visitor
    Current.visitor ||= Visitor.find_by(id: session[:visitor_id]) || create_current_visitor
  end

  def create_current_visitor
    visitor = Visitor.create!(user_agent: request.user_agent)
    session[:visitor_id] = visitor_id

    visitor
  end

end
