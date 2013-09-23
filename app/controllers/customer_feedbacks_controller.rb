class CustomerFeedbacksController < ApplicationController
  before_action :send_message, only: [:show, :edit, :update, :destroy]
  
   def index
    @customer_feedbacks = CustomerFeedback.all
  end

  def new
    @customer_feedback = CustomerFeedback.new
  end

  def show
  end

  def create
    @customer_feedback = CustomerFeedback.new(reg_params)
    if @customer_feedback.save
      redirect_to @customer_feedback, notice: 'Your message was successfully sent'
    else
      render :new
    end
  end

  protected
  def reg_params
    params.require(:customer_feedback).permit(
      :first_name,
      :last_name,
      :email_address,
      :subject,
      :description)
  end

  def send_message
    @customer_feedback = CustomerFeedback.find(params[:id])
  end
end
