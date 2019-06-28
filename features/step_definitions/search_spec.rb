require_relative '../lib/pages/SearchPage.rb'
require_relative '../lib/pages/ShoppingCartPage.rb'
require 'page-object'
require 'rspec'

Given("a user goes to Amazon and searchs for three unique items") do
    visit SearchPage do |page|
      page.search_box = 'ASUS MG28UQ 4K/UHD 28-Inch Gaming'
      @browser.send_keys(:enter)
      page.select_monitor.click
      page.click_add_to_cart
      page.no_thanks
      sleep(2)
      page.search_box = 'Metasploit: The Penetration Tester\'s Guide Book'
      @browser.send_keys(:enter)
      page.select_book.click
      page.click_add_to_cart
      page.search_box = 'Cat Coffee Mug'
      @browser.send_keys(:enter)
      @browser.screenshot.save 'catcup.png'
      page.select_coffee_mug.click
      page.click_add_to_cart
    end
  end
  
  When("they are viewing their Shopping Cart they only see three items") do
    visit ShoppingCartPage do |page|
      page.check_monitor_in_cart
      page.check_guide_book_in_cart 
      page.check_coffee_mug_in_cart     
    end
  end

  And("if they decide to move one") do
    visit ShoppingCartPage do |page|
      page.delete_from_cart
    end
  end
  
  Then("they will only have two items") do 
    visit ShoppingCartPage do |page|
      expect(page.monitor).not_to be_present
      page.check_guide_book_in_cart 
      page.check_coffee_mug_in_cart  
    end
  end