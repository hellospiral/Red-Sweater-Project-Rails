class GoodcausesController < ApplicationController

  def index
    @goodcauses = Goodcause.all
  end

  def new
    @goodcause = Goodcause.new
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end

  def create
    @goodcause = Goodcause.new(cause_params)
    if @goodcause.save
      respond_to do |format|
        format.html { redirect_to admin_index_path }
        format.js
      end
    end
  end

  def edit
    @goodcause = Goodcause.find(params[:id])
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end

  def update
    @goodcause = Goodcause.find(params[:id])
    if @goodcause.update(cause_params)
      flash[:notice]="Cause successfully updated!"
      respond_to do |format|
        format.html {redirect_to admin_index_path}
        format.js
      end
    end
  end

  def destroy
    @goodcause = Goodcause.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_index_path }
      format.js
    end
  end

  private
  def cause_params
    params.require(:goodcause).permit(:name, :details, :cost, :image)
  end

end
