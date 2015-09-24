class Vacancy < ActiveRecord::Base
  has_one :employer
  has_many :employees, through: :employervacancies
end
