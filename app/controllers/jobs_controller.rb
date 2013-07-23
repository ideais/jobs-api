class JobsController < ApplicationController

  def show
    @jobs = Job.all

    respond_to do |format|
      format.json
    end
  end

end
