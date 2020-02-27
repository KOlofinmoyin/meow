feature 'students' do
  scenario 'meow students\' photo is rendered on the students page' do
    visit('/students')
    save_and_open_page
    expect(page.find("img[src*='https://cdn2.thecatapi.com/images/']"))
  end

end
