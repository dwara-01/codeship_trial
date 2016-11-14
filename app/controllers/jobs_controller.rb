class JobsController < ApplicationController

  def create
    @job = Job.new
    @job.save
  end

  def new
    @job = Job.new
  end

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
