require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Merrymaker" }

  describe "Home page" do

    it "should have the content 'Merrymaker'" do
      visit '/static_pages/home'
      expect(page).to have_content('Merrymaker')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do 
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
end
