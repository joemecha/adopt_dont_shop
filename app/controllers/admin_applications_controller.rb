class Admin::ApplicationsController < ApplicationController
  def show
    @application = Application.find(params[:id])
  end

  def update
    if params[:form] == "approve"

    elsif params[:form] == "reject"

    end
    
  end
end
