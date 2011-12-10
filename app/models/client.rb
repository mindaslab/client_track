class Client < ActiveRecord::Base
  has_many :notes, :order=>'created_at desc'
end
