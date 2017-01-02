require 'pry'
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

  def assign_job_to_hr
    @job = Job.find(params[:id])
    @hr = User.next_hr
    @job.hr_agent = @hr
    @job.save
  end

  def update
  end

  def destroy
  end

  def queue_job
      enqueue(@job)
  end


end
