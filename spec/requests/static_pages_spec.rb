require 'spec_helper'

describe "StaticPages" do
  
  subject {page} 

  describe "Home page" do

    before { visit root_path }

    it {should have_selector('h1', text: 'Flegra Engineering')}
    it {should have_selector('title', text: full_title(''))}
    it {should_not have_selector('title', text: '| Home')}

  end

  describe "Portfolio page" do

    before {visit portfolio_path}

    it {should have_selector('h1', text: 'Portfolio')}
    it {should have_selector('title', text: full_title('Portfolio'))}

  end

  describe "Technologies page" do

    before {visit technologies_path} 

    it {should have_selector('h1', text: 'Technologies')}
    it {should have_selector('title', text: full_title('Technologies'))}

  end

  describe "About page" do

    before {visit about_path}

    it {should have_selector('h1', text: 'About Us')}
    it {should have_selector('title', text: full_title('About Us'))}

  end

  describe "Contact page" do
    
    before {visit contact_path}

    it {should have_selector('h1', text: 'Contact')}
    it {should have_selector('title',text: full_title('Contact'))}

  end
end
