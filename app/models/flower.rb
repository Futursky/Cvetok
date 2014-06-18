class Flower < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  has_many :images, :as => :imagable, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true

  before_destroy :ensure_not_referenced_by_any_line_item

  private

  # убеждаемся в отсутствии товарных позиций, ссылающихся на данный товар
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'существуют товарные позиции')
      return false
    end
  end

end
