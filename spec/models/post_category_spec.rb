require 'rails_helper'

describe 'Post Category' do
  before do
    p = Post.create(title: "New Post", content: "This is a new post")
    p.categories.build(name: "New")
    p.save
    c = Category.last
  end

  if 'joins post and category' do
    expect(p.categories.first.id).to eq(c.id)
  end

end
