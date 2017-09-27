require 'pry'
cart = [
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

coupons={:item => "AVOCADO", :num => 2, :cost => 5.0}

def consolidate_cart(cart)
  cart_hash={}
  cart.each do |hash|
    hash.each do |item,attr|
      if !cart_hash.key?(item)
        cart_hash[item] = attr
        cart_hash[item][:count]=0
      end
      cart_hash[item][:count] = cart_hash[item][:count] + 1
    end
  end
  cart_hash
end

def apply_coupons(cart, coupons)
  # code here
  binding.pry
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
apply_coupons(consolidate_cart(cart),coupons)
