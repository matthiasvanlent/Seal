class Employee < ActiveRecord::Base
  has_many :vacancies, through: :employeevacancies
end
