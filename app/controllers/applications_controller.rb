class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
    if params[:adopt]
      if !@application.pets.include?(Pet.find(params[:adopt]))
        @pets_to_adopt = @application.add_pet
        # @pets_to_adopt = @application.pets << Pet.find(params[:adopt])
      end
    elsif params[:search]
      @pets = Pet.search(params[:search])
    end
  end

  def new
  end

  def create
    application = Application.new(application_params)

    if application.save
      redirect_to "/applications/#{application.id}"
    else
      redirect_to '/applications/new'
      # render :action => :edit ------- can answers be maintained?
      flash[:alert] = "Error: #{error_message(application.errors)}"
    end
  end

  def edit
    @application = Application.find(params[:id])
  end

  def update
    application = Application.find(params[:id])
    application.statement = params[:application][:statement]
    application.status = "Pending"
    application.save
    # if application.update = params[:application][:statement]
    #   redirect_to "/applications/#{application.id}"
    # else
    redirect_to "/applications/#{application.id}"
    #   flash[:alert] = "Error: #{error_message(application.errors)}"
    # end
  end

  def destroy
    # application = Application.find(params[:id])
    # application.destroy
    # redirect_to '/applications'
  end

  private

  def application_params
    params.permit(:applicant_name, :street, :city, :state, :zip_code, :statement, :status)
  end
end
