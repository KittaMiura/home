class Post < ApplicationRecord

  has_many :post_category_relations, dependent: :destroy
  has_many :categories, through: :post_category_relations, dependent: :destroy

end
