class CustomerFeedbacksController < ApplicationController
  # before_action :get_customer_feedback_record, only: [:show, :edit, :update, :destroy]
  
   def index
    @customer_feedbacks = CustomerFeedback.all
  end

  def new
    @customer_feedback = CustomerFeedback.new
  end

  def show
    @customer_feedback = CustomerFeedback.find(params[:id])
  end

  def create
    @customer_feedback = CustomerFeedback.new(reg_params)
    if @customer_feedback.save
      redirect_to @customer_feedback, notice: 'Your message was successfully sent'
    else
      render :new
    end
  end

  def destroy
    @customer_feedback = CustomerFeedback.find(params[:id])
    @customer_feedback.destroy
    respond_to do |format|
      format.html { redirect_to customer_feedbacks_path }
      format.json { head :no_content}
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

  # def send_message
    # @customer_feedback = CustomerFeedback.find(params[:id])
  # end
end
