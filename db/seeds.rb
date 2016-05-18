require 'ffaker'
	post = Post.new

11.times do
  post = Post.new
  post.title = FFaker::HipsterIpsum.sentence(4)
  post.description = FFaker::HipsterIpsum.paragraph
  post.save!
end
puts post.inspect
