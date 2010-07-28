class Document < ActiveRecord::Base
  belongs_to :creator, :class_name => 'Editor'
  belongs_to :revisor, :class_name => 'Editor'
  validates_presence_of [:body, :creator_id]
end
