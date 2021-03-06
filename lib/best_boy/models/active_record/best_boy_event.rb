class BestBoyEvent < ActiveRecord::Base
  
  # associations
  #
  #
  belongs_to :owner, :polymorphic => true

  # validations
  #
  #
  validates :event, :presence => true

  # scopes
  #
  #

  scope :per_day, lambda { |date| where("best_boy_events.created_at BETWEEN ? AND ?", date.beginning_of_day, date.end_of_day) }
  scope :per_week, lambda { |date| where("best_boy_events.created_at BETWEEN ? AND ?", date.beginning_of_week, date.end_of_week) }
  scope :per_month, lambda { |date| where("best_boy_events.created_at BETWEEN ? AND ?", date.beginning_of_month, date.end_of_month) }
  scope :per_year, lambda { |date| where("best_boy_events.created_at BETWEEN ? AND ?", date.beginning_of_year, date.end_of_year) }

  # attributes
  #
  #
  attr_accessible :event, :event_source
  
end