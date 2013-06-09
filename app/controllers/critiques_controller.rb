class CritiquesController < ApplicationController
  before_filter :signed_in_user

  def create
    @critique = Critique.new

    if params[:type] == "text"
      @critique.comment = params[:comment]
    end

    @critique.micropost_id = params[:id]
    @critique.reviewer_id = current_user.id
    @critique.category = params[:type]
    @critique.positive = params[:positive]
    @critique.seconds = params[:seconds].to_i.floor

    if(@critique.save!)
      respond_to do |format|
        format.js
      end
    else
      Rails.logger.debug "AHH WE COULDN'T CREATE"

      respond_to do |format|
        format.js {
          flash[:error] = "Couln't create critique"
          render critiques_path
        }
      end
    end
  end

  def destroy
    @critique = Critique.find_by_id(params[:id])
    micropost = @critique.micropost

    if @critique.destroy
      flash.notice = "Critique removed!"
      redirect_to micropost_path(micropost.id)
    else
      redirect
      redirect_to micropost_path(micropost.id)
    end
  end 
end