class EducationsController < ApplicationController

  def show
    @educations = Education.all

    respond_to do |format|
      format.html # show.html.erb
      format.json
    end
  end

end
