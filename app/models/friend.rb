class Friend < ApplicationRecord
  # scope :by_user, lambda {|user| {:conditions => {:user_id => user.id}}}
  
  belongs_to :user
  
  def self.friends_for(authenticated_user)
    self.where(user_id: authenticated_user.id)
  end

end
