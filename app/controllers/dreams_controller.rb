class DreamsController < ApplicationController
  before_action :set_dream, only: [:update, :destroy]

  # POST /dreams
  def create
    @dream = Dream.new(dream_params)

    if @dream.save
      render json: @dream, status: :created, location: @dream
    else
      render json: @dream.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dreams/1
  def update
    if @dream.sleep.user_id == current_user.id && @dream.update(dream_params)
      render json: @dream
    else
      render json: @dream.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dreams/1
  def destroy
    if @dream.sleep.user_id == current_user.id
      @dream.destroy
    else
      render json: @dream.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dream
      @dream = Dream.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dream_params
      params.require(:dream).permit(:description, :mood, :sleep_id)
    end
end
