class Product < ApplicationRecord

	belongs_to :supplier 
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

	validates :title, presence: true
	validates :title, uniqueness: true
	validates :price, presense: true

  def is_discounted?
    price.to_f <= 2
  end

  def tax
    price.to_f * 0.09
  end

  def total
    price.to_f + tax
  end

  def as_json
    {
      id: id,
      name: name,
      image_url: image_url,
      price: price,
      description: description,
      tax: tax,
      total: total,
      is_discounted: is_discounted?, 
      supplier: supplier.as_json
    }

  end

end
