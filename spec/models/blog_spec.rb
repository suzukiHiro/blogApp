require 'rails_helper'

RSpec.describe Blog, :type => :model do
	fixtures :blogs

	describe "save blog" do
		it "title is empty" do
			blog = Blog.new({
				title: ""
			})
			expect(blog.save).to be_falsy
		end

		it "title is not empty" do
			blog = Blog.new({
				title: "hogehoge blog"
			})
			expect(blog.save).to be_truthy
		end
	end

end