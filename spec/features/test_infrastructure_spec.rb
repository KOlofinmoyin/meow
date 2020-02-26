feature 'infrastructure' do
  scenario 'Home page says "Welcome to Meow School"' do
    visit('/')
    expect(page).to have_content("Welcome to Meow School")
  end

end
