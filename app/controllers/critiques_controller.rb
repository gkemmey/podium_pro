class CritiquesController < ApplicationController
  before_filter :signed_in_user

  def create
    @critique = Critique.new
    Rails.logger.debug "PARAMS"
    params.each {|p| Rails.logger.debug p}

    Rails.logger.debug "IN CREATE"


    if params[:type] != "text"
      @critique.micropost_id = params[:id]
      @critique.reviewer_id = current_user.id
      @critique.category = params[:type].to_s
      @critique.positive = params[:positive]
      @critique.seconds = params[:seconds].to_i.floor
    else
      # text comment
    end

    if(@critique.save!)
      @rendered_critique = render_to_string(partial: "critiques/critique",
                                 layout: false,
                                 locals: { critique: @critique } )

      Rails.logger.debug "RENDER STRING:"
      Rails.logger.debug @rendered_critique

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
end