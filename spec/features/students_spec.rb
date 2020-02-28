feature 'students' do
  scenario 'meow students\' photo is rendered on the students page' do
    visit('/students')
    expect(page.find("img[src*='https://cdn2.thecatapi.com/images/']"))
  end

  scenario 'photos of ALL Meow Students are rendered and paginated' do
    visit('/students')
       all_images = page.all('img')
       all_images.each do |img|
          get img[:src]
         expect(response).to be_successful
       end
     end
 end
