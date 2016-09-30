class PositionsController < ApplicationController
  def new
    @position = Position.new
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      respond_to do |format|
        format.html { redirect_to admin_index_path }
        format.js
      end
    end
  end

  def edit
    @position = Position.find(params[:id])
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end

  def update
    @position = Position.find(params[:id])
    if @position.update(position_params)
      flash[:notice]="Position successfully updated!"
      respond_to do |format|
        format.html {redirect_to admin_index_path}
        format.js
      end
    end
  end

  def destroy
    @position = Position.destroy(params[:id])
    flash[:alert]="This position has been removed"
    respond_to do |format|
      format.html { redirect_to admin_index_path }
      format.js
    end
  end

  private
  def position_params
    params.require(:position).permit(:title, :available, :details, :term, :stipend, :location)
  end
end
