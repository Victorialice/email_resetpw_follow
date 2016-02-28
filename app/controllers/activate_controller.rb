class ActivateController < ApplicationController
  def update
	  @user = User.find()
  end
end
