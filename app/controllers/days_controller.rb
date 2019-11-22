class DaysController < ApplicationController
  before_action :set_day, only: [:update, :destroy]

  # POST /days
  def create
    final_params = day_params
    final_params['user_id'] = current_user.id
    @day = Day.new(final_params)

    if @day.save
      render json: @day, status: :created, location: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /days/1
  def update
    if @day.user_id == current_user.id && @day.update(day_params)
      render json: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /days/1
  def destroy
    if @day.user_id == current_user.id
      @day.activities.destroy_all
      @day.destroy
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def day_params
      params.require(:day).permit(:date, :note, :rating)
    end
end
