require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the h1 'Flegra Engineering'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Flegra Engineering')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Flegra Engineering | Home")
    end
  end

  describe "Portfolio page" do
    it "should have the h1 'Portfolio'" do
      visit '/static_pages/portfolio'
      page.should have_selector('h1', :text => 'Portfolio')
    end

    it "should have the title 'Portfolio'" do
      visit '/static_pages/portfolio'
      page.should have_selector('title', :text => "Flegra Engineering | Portfolio")
    end
  end

  describe "Technologies page" do
    it "should have the h1 'Technologies'" do
      visit '/static_pages/technologies'
      page.should have_selector('h1', :text => 'Technologies')
    end

    it "should have the title 'Technologies'" do
      visit '/static_pages/technologies'
      page.should have_selector('title', :text => "Flegra Engineering | Technologies")
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Flegra Engineering | About Us")
    end
  end

end
