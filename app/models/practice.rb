class Practice < ApplicationRecord
  has_many :practices_books, dependent: :destroy
  has_many :books, through: :practices_books
  accepts_nested_attributes_for :practices_books, allow_destroy: true, reject_if: :all_blank

  acts_as_list
end
