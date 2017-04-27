class UsersController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:send_mail]

  def index
    @units = Unit.where(owner_id: current_user.id)
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def send_mail
    UserMailer.hoa_email(params).deliver_now
    flash[:notice] = 'An email has been sent to the HOA board. You should receive a response shortly.'
    redirect_to :root
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :unit)
    end
end
