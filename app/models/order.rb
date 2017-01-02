class Order < ActiveRecord::Base
  belongs_to :user
  def new_order
      j = self.class.new
      j.save
  end
end
