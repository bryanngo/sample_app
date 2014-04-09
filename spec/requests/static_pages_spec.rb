require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  #describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
  #    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #    get static_pages_index_path
  #    response.status.should be(200)
  #  end
  subject {page}

  describe "Home page" do
  	before { visit root_path }
    #it "should have the content 'Sample App'" do
      #visit '/static_pages/home'
      #visit root_path
      #expect(page).to have_content('Sample App')
    it { should have_content('Sample App')}
 	#end
 	#it "should have the base title" do
  	  #visit '/static_pages/home'
  	  #visit root_path
  	  #expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	#it { should have_title('Ruby on Rails Tutorial Sample App')}
  	it { should have_title(full_title(''))}
    #end
    #it "should not have a custom page title" do
      #visit '/static_pages/home'
      #visit root_path
      #expect(page).not_to have_title("| Home")
    #it { should_not have_title('Home')}
    it { should_not have_title('| Home')}
    #end
  end

  describe "Help page" do
  	before { visit help_path}
  	#it "should have the content 'Help' " do
  	it { should have_content('Help')}
  	  #visit '/static_pages/help'	
  	  #visit help_path
  	  #expect(page).to have_content('Help')
  	#end	
  	#it "should have the title 'Help'" do
    it { should have_title(full_title('Help'))}
  	  #visit '/static_pages/help'
  	  #visit help_path
  	  #expect(page).to have_title(" #{base_title} |  Help ")
    #end
  end

  describe "About page" do
  	before {visit about_path}
  	#it "should have the content 'About Us' " do
  	it { should have_content('About')}
  	  #visit '/static_pages/about'
  	  #visit about_path
  	  #expect(page).to have_content 'About Us'
  	#end
  	#it "should have the title 'About Us'" do
  	it { should have_title('About Us')}
  	  #visit '/static_pages/about'
  	  #visit about_path
  	  #expect(page).to have_title(" #{base_title} |  About Us")
    #end
  end

  describe "Contact page" do
  	before { visit contact_path}
  	#it "should have the content 'Contact'" do
  	it { should have_content('Contact')}
  	  #visit '/static_pages/contact'
  	  #visit contact_path
  	  #expect(page).to have_content 'Contact'
  	#end
  	#it "should have the title 'Content'" do
  	it { should have_title('Contact')}
  	  #visit '/static_pages/contact'
  	  #visit contact_path
  	  #expect(page).to have_title(" Ruby on Rails Tutorial Sample App |  Contact")
  	#end
  end


end
