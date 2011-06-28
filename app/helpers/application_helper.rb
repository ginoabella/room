module ApplicationHelper
	def title
		@title
	end
	
	def logo
    image_tag("itechlogo.jpg", :alt => "Itech", :class => "round", :size => "50x30")
  end
    
  def link_to_icon(icon_name, url_or_object, options={})
  	options.merge!({ :class => "icon #{icon_name}" })
    link_to(image_tag("icons/#{icon_name}.png"), url_or_object,	options)
  end

  
end
