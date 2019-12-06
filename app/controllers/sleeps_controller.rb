class SleepsController < ApplicationController
  before_action :set_sleep, only: [:update, :destroy]

  # POST /sleeps
  def create
    final_params = sleep_params
    final_params['user_id'] = current_user.id
    @sleep = Sleep.create(final_params)

    if @sleep.valid?
      render json: { sleep: SleepSerializer.new(@sleep)}, status: :created
    else
      render json: { error: 'failed to create sleep' }, status: :not_acceptable
    end
  end

  # PATCH/PUT /sleeps/1
  def update
    if @sleep.user_id == current_user.id && @sleep.update(sleep_params)
      render json: @sleep
    else
      render json: @sleep.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sleeps/1
  def destroy
    if @sleep.user_id == current_user.id
      @sleep.dreams.destroy_all
      @sleep.destroy
    else
      render json: @sleep.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sleep
      @sleep = Sleep.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sleep_params
      params.require(:sleep).permit(:start_day, :start_time, :end_day, :end_time, :note, :rating)
    end
end
