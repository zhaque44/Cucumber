require 'page-object'

class SearchPage
     include PageObject
     page_url "http://www.amazon.com"
     text_field(:search_box, id: "twotabsearchtextbox")
     button(:search, value: "Go")
     button(:no_thanks, :id => 'attachSiNoCoverage-announce')

    def select_monitor
      @browser.link :text => 'ASUS MG28UQ 4K/UHD 28-Inch FreeSync Gaming Monitor'
    end

    def select_book
      @browser.link :text => 'Metasploit: The Penetration Tester\'s Guide'
    end

    def select_coffee_mug
      @browser.link :text => 'BnB Cat Lovers Mug Coffee Right Meow Funny Message Novelty Ceramic Cup for Java, Hot Tea or Hot Chocolate 13 oz 3.75 in H x 5 in W x 3.5 in D, Black and White with Feline Animated drawings, One in box'
    end

    def click_add_to_cart
      @browser.element(:xpath => "//input[@value='Add to Cart']").click
      sleep(2)
    end
end