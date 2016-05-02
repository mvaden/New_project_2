class Assignment < ActiveRecord::Base
  # You have a good setup for your models in terms of associations, I think
  # a good next step would be to update your UI so that you can use the
  # associations for the users to associate students and assignments
  belongs_to :student
end
