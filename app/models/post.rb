class Post < ActiveRecord::Base
  belongs_to :sub,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: :Sub

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

  has_many :postings,
    primary_key: :id,
    foreign_key: :post_id,
    class_name: :PostSub

    has_many :subs,
      through: :postings,
      source: :sub 
end
