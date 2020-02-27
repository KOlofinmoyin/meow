feature 'infrastructure' do
  scenario 'Home page says "Welcome to Meow School"' do
    visit('/')
    save_and_open_page
    expect(page).to have_content("Welcome to Meow School")
  end

end
