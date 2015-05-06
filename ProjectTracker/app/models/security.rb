class Security < ActiveRecord::Base
  attr_accessible :name, :provider, :uid
  def self.create_with_onmiauth(auth)
    Security.create!(
	  :provider => auth["provider"],
	  :uid => auth["uid"],
	  :name => auth["info"]["name"]
    )
  end
end
