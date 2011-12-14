class Note < ActiveRecord::Base
  belongs_to :client
  validates :content, :presence=>true
  searchable_by :content
end
