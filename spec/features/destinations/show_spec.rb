require 'rails_helper'

 RSpec.describe 'show', :vcr do
   it "shows weather", :vcr do
     destination = Destination.create!(name: 'Imogeneborough', zip: '6010', description: 'Rainy', image_url: 'https://via.placeholder.com/300x300.png' )
     visit '/'

     click_on('Show')

     expect(current_path).to eq("/destinations/#{destination.id}")
     expect(page).to have_content(destination.name)
     expect(page).to have_content(destination.zip)
     expect(page).to have_content(destination.description)


# Then I should see the destination's name, zipcode, description, and current weather
# The weather forecast is specific to the destination whose page I'm on
# The forecast should include date (weekday, month and day), current, high and low temps in Fahrenheit, and a summary (for example "light rain", "clear sky", etc.)

   end
 end
