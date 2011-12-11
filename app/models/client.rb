class Client < ActiveRecord::Base
  has_many :notes, :order=>'created_at desc'
  searchable_by :name, :ph, :email, :address, :description
end
