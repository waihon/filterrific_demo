class Search < ActiveRecord::Base
  validates :name, presence: true
  validates :filter, presence: true
end
