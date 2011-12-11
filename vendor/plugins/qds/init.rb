# Include hook code here
require 'active_record'
require 'qds'

ActiveRecord::Base.extend MindAsLab::Searchable
