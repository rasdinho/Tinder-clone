class User < ApplicationRecord
    has_many :matchers, :class_name => 'Match', 
        :foreign_key => 'requester_id'
    has_many :matchee, :class_name => 'Match', 
        :foreign_key => 'requestee_id'
end  




# class Snack
#     belongs_to :retailer
# end

# snack.retailer 
# snack.retailer= (Retailer.first)
# snack.retaailer_id
# snack.retailer_id=

# class retailer
#     has_many :Snacks
# end

# user.matchers

# user.requestees