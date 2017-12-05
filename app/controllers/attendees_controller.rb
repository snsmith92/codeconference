class AttendeesController < ApplicationController

  def index
  end

  def new
    @attendee = Attendee.new
  end

  def create
    @attendee = Attendee.create (attendee_params)
    if @attendee.invalid?
      flash[:error] = "Your registration could not be saved as the information you entered was invalid. Please try again."
    end
    redirect_to attendee_path(@attendee) #redirect to show page with persons details
  end

  def show
    @attendee = Attendee.find(params[:id])
  end 


  private

  def attendee_params
    params.require(:attendee).permit(:firstname, :lastname, :email, :phone, :company, :role)
  end 
end
