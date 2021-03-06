module ApplicationHelper
  def user_avatar(user, size=20)
     if user.avatar.attached?
       user.avatar.variant(resize: "#{size}×#{size}!")
     else
       gravatar_image_url(user.email, size: size)
     end
    
   end
end
