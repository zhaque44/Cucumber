require 'page-object'
require 'watir'

class ShoppingCartPage
     include PageObject
     page_url "https://www.amazon.com/gp/cart/view.html?ref_=nav_cart"

     def delete_from_cart
          @browser.execute_script('document.querySelectorAll("#activeCartViewForm input[value=\'Delete\']")[2].click()')         
     end

     def check_monitor_in_cart
          self.wait_until(2, 'ASUS MG28UQ 4K/UHD 28-Inch FreeSync Gaming Monitor').exists?   
     end

     def check_guide_book_in_cart
          self.wait_until(2, 'Metasploit: The Penetration Tester\'s Guide Book').exists?   
     end

     def check_coffee_mug_in_cart
          self.wait_until(2, 'BnB Cat Lovers Mug Coffee Right Meow Funny Message Novelty Ceramic Cup for Java, Hot Tea or Hot Chocolate 13 oz 3.75 in H x 5 in W x 3.5 in D, Black and White with Feline Animated drawings, One in box').exists?   
     end

     def monitor
          self.link :text => 'ASUS MG28UQ 4K/UHD 28-Inch FreeSync Gaming Monitor'
     end
end