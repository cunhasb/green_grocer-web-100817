require 'pry'
cart = [
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

def consolidate_cart(cart)
  cart.each_with_object({}) do |(array,hash),new_cart|
    hash.each do |item,hsh|
      new_cart[item] ||= {}
      new_cart[item][:count] ||= 0
      new_cart[item][:count] =+ 1
      binding.pry
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
