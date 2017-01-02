class User < ActiveRecord::Base

  has_many :orders
  has_one :job

  def make_current
    Thread.current[:user] = self
  end

  def new_user
      j = self.class.new
      j.save
  end

  class << self
    def current
      Thread.current[:user]
    end
  end

end
