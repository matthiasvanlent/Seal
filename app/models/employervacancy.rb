class Employervacancy < ActiveRecord::Base
  belongs_to :employer
  belongs_to :vacancy
end
