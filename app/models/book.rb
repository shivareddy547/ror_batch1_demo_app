class Book < ApplicationRecord

  has_one :cover
  belongs_to :subject

end
