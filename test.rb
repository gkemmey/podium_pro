embed_link = "<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/3tiPndMqxLQ\" frameborder=\"0\" allowfullscreen></iframe>"

normal_link = "http://www.youtube.com/watch?v=3tiPndMqxLQ"

links = []

links << embed_link
links << normal_link

links.each do |link|
  if link.include? "watch?v="
    puts link.split("=")[1][0...11]
  elsif link.include? "embed/"
    puts link.split("embed/")[1][0...11]
  else
    # not a good link
  end
end