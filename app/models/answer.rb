class Answer < ActiveRecord::Base
  
  #associations between tables
  belongs_to :question
  has_one :user
  belongs_to :plan  
  attr_accessible :text, :plan_id, :question_id, :user_id
  accepts_nested_attributes_for :question
  accepts_nested_attributes_for :plan
end
