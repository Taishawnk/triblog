class Category < ApplicationRecord
    validates :name, presence: true,length: { minimum: 4, maximum: 16 }
    validates_uniqueness_of :name 
    has_many :article_categories
    has_many :articles, through: :article_categories
end