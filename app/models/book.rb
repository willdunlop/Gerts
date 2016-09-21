class Book < ApplicationRecord
  belongs_to :user
  acts_as_votable

  def score
      self.find_votes_for.sum(:vote_weight).to_f / self.votes_for.size.to_f
  end

  def self.search(search)
    where("author LIKE ?", "%#{search}%")
    where("title LIKE ?", "%#{search}%")

  end


end
