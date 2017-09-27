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
 item = coupons[:item]
 remainder = cart[item][:count] % coupons[:num]
 sets = cart[item][:count] / coupons[:num]
 if cart[item]
   if sets >= 1
     cart[item + " W/COUPON"] = {
       price: coupons[:cost],
       clearance: cart[item][:clearance],
       count: sets}
     end
     if remainder >= 1
        cart[item][:count] = remainder
      else
        cart.delete(item)
        binding.pry
      end
 end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
apply_coupons(consolidate_cart(cart),coupons)
