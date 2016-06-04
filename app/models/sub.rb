class Sub < ActiveRecord::Base
  belongs_to :moderator,
  primary_key: :id,
  foreign_key: :moderator_id,
  class_name: :User

  has_many :postings,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: :PostSub

  has_many :posts,
    through: :postings,
    source: :post

  validates :title, :description, :moderator_id, presence: true
end
