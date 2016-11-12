class User < ActiveRecord::Base

  def make_current
    Thread.current[:user] = self
  end

  class << self
    def current
      Thread.current[:user]
    end
  end

end
