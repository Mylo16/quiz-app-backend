class Quiz < ApplicationRecord
  belongs_to :course
  has_many :questions, dependent: :destroy
  has_many :progresses, dependent: :destroy
end
