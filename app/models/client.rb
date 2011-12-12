class Client < ActiveRecord::Base
  has_many :notes, :dependent=>:destroy, :order=>'created_at desc'
  searchable_by :name, :ph, :email, :address, :description
  
  validates :name, :presence=>true
end
