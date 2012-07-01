require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Bienvenue'" do
      visit root_path
      page.should have_selector('h1', text: 'Bienvenue sur Associations')
    end

  
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', text: 'Help')
    end

  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', text: 'About Us')
    end

  
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

  end
end