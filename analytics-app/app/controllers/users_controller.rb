class UsersController < ApplicationController
  def create
    ...
    Current.visitor.presence && Current.visitor.update!(user: current_user)
  end
end
