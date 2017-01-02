class Job < ActiveRecord::Base

  belongs_to :user
  #this is a job

  def new_job
      j = self.class.new
      j.save
  end

  def send_offer
      u = User.find(j.id)
      send_mail(u, :offer)
  end

  def send_mail(a,b)
      # to do
  end


end
