# BONUS ONLY: Write the array_to_hash and palindrome? methods
def array_to_hash(array)
  hash = {}
  array.each_with_index do |item, index|
    hash[:"key#{index}"] = item
  end
  hash
end