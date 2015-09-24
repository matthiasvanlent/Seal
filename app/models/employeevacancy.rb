class Employeevacancy < ActiveRecord::Base
  belongs_to :employee
  belongs_to :vacancy
end
