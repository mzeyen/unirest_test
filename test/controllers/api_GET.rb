require "unirest"
require "test/unit"
require 'shoulda'

module Unirest
    class RequestTest < Test::Unit::TestCase
        
        should " make a GET response" do
            response = Unirest.get("http://admin:admin@agrohmann-vm3.intern.epages.de/epages/DemoShop.rest/api/products")
                assert response.code==200
                puts response.code
        end
        
        should "make a GET with basic authentication" do
             response = Unirest.get("http://admin:admin@agrohmann-vm3.intern.epages.de/epages/DemoShop.rest/api/products", auth:{:user=>"admin",:password=>"admin"})
             assert response.code==200
        end
        
        should "make a GET to a single product" do
             response = Unirest.get("http://admin:admin@agrohmann-vm3.intern.epages.de/epages/DemoShop.rest/api/products/558955A5-BEEB-D39A-1336-AC143243D14B", auth:{:user=>"admin",:password=>"admin"})
             puts response.body
        end
    end
end
