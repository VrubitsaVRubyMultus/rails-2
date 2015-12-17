module ApplicationHelper
	def link_with_icon(icon, path, options = {})
    title = options.delete(:title)
    size = options.delete(:size)
    size_class = size ? "fa-#{size}x" : ''
    link_to path, options do
      content_tag(:span, title, class: "fa fa-#{icon}  #{size_class}")
    end
  end
end
