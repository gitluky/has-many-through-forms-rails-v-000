require 'rails_helper'

describe 'Post Category' do

  before do
    p = Post.create(title: "New Post", content: "This is a new post")
    c = p.categories.build(name: "New")
    p.save

  end

  it 'joins post and category' do
    expect(PostCategory.find_by(post_id: p.id).category_id).to eq(c.id)
  end

end
