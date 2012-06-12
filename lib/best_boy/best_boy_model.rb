module BestBoy
  module BestBoyModel
    def has_a_best_boy
      
      # meta programming
      #
      #
      include InstanceMethods
      
      # associations
      #
      #
      has_many :best_boy_events, :as => :owner, :dependent => :nullify
      
      # callbacks
      #
      #
      after_create :trigger_create_event
      before_destroy :trigger_destroy_event

    end
  end
end

ActiveRecord::Base.send :extend, BestBoy