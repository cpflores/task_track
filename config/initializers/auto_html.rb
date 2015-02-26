# From Pedro
#AutoHtml.add_filter(:image).with(:width => 300, :height => 300) do |text, options|
#	text.gsub(/http:\/\/.+.(jpg|jpeg|bmp|gif|png)(\?\S+)?/i) do |match|
#		width = options[:width]
#		height = options[:height]
#		%||
#	end
#end

# From auto_html github
AutoHtml.add_filter(:image).with(:width => "100%", :height => 250) do |text, options|
  text.gsub(/http:\/\/.+\.(jpg|jpeg|bmp|gif|png)(\?\S+)?/i) do |match|
    width = options[:width]
		height = options[:height]
    %|<img src="#{match}" alt="" width="#{width}" height="#{height}"/>|
  end
end