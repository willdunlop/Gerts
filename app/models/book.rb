class Book < ApplicationRecord
  belongs_to :user
  acts_as_votable


  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("title LIKE ?", "%#{search}%")
  end


end
