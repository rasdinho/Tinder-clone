class Match < ApplicationRecord
    belongs_to :requestee, :class_name => 'User', 
        :foreign_key => 'requestee_id'
    belongs_to :requester, :class_name => 'User', 
        :foreign_key => 'requester_id'

end


# x_match= Match.first

# x.requestee 
# x.requester

# class Match 
#     belongs_to :user
# end