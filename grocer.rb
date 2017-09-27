require 'pry'
cart = [
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

def consolidate_cart(cart)
  cart_hash={}
  cart.each do |items|
    items.each do |item,attr|
      cart_hash[item] ||= attr
      cart_hash[item][:count] || = 0
      cart_hash[item][:count] =+ 1
    end
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
consolidate_cart(cart)
