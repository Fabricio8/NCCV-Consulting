class Garage < ActiveRecord::Base
  belongs_to :profile
  belongs_to :district
end
