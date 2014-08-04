require 'rails_helper'

feature 'Manage Blog' do
	
  scenario 'when title is empty, result is error' do
    visit_new_blog_page()
    create_new_blog('')
    expect(page).to have_content 'error prohibited this blog from being saved'
  end

  scenario 'Blogの新規作成時にtitleを入力した場合はデータが保存され閲覧画面に遷移すること' do
    visit_new_blog_page()
    create_new_blog('テストブログ')
    expect(current_path).to eq blog_path(Blog.last)
  end

  def visit_new_blog_page
  	visit blogs_path
  	click_link '新しいブログを作成する'
  end

  def create_new_blog(title)
  	fill_in 'Title', with: title
  	click_button 'Create Blog'
  end
end