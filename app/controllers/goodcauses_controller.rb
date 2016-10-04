class GoodcausesController < ApplicationController

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

  private
  def cause_params
    params.require(:goodcause).permit(:name, :details, :cost, :image)
  end

end
