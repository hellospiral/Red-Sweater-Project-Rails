class Event < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :length => { maximum: 30 }
  validates :image, :presence => true

  default_scope {order('created_at DESC')}

end
