class Product < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: {maximum: 30}
    validates :price, presence: true
    validates :description, presence: true, length: {maximum: 200}
    before_save do
        self.name=self.name.strip
        self.description=self.description.strip
        self.price=self.price.to_s.strip
    end
    
end
