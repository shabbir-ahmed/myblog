module UsersHelper
	def avatar_for(user, options = { size: 80 })
		size = options[:size]
    	style = options[:style]

		if user.avatar?
			if size <= 80
        		image_tag user.avatar.url, width: size, height: size, alt: user.username, class: 'avatar-image', style: style
      		else
        		image_tag user.avatar.url, width: size, height: size, alt: user.username, class: 'avatar-image', style: style
      		end
		else
			"<h1>No Image</h1>"
		end
	end
end