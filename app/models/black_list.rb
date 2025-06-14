class BlackList < ApplicationRecord

  def self.save_email_user(email)
    registed = BlackList.find_or_create_by(email: email)
    registed.penalty +=1
    registed.save 
  end

end
