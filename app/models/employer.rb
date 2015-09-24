class Employer < ActiveRecord::Base
  belongs_to :company
  belongs_to :employervacancy
end
