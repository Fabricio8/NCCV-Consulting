class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :type_user
  belongs_to :district
end
