module ApplicationHelper
  def avatar_url(user)
    return user.profile_photo unless user.profile_photo.nil?
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
   
    "https://s.gravatar.com/avatar/d4d33ba56613226e20be00fd16d9d206?s=80"
  end
end
