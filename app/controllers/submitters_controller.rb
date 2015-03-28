class SubmittersController < ApplicationController
  #before_filter :authenticate_user!

  def index
    @submitters = Submitter.all
  end

  def show
    @submitter = Submitter.find(params[:id])
    unless @submitter == current_submitter
      redirect_to :back, :alert => "Access denied."
    end
  end

end
