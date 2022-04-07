require 'byebug'

# def no_dupes?(array)
#     arr = []
#     dupes = []

#     array.each do |ele|
#         if !arr.include?(ele) && !dupes.include?(ele)
#             arr << ele 
#         else
#             if !dupes.include?(ele)
#                 dupes << ele
#                 arr.delete(ele)
#             end
#             arr.delete(ele)
#         end
#     end
#     arr
# end


# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])            # => []



# def no_consecutive_repeats?(array)
#     array.each_with_index do |ele,i|
#         if i != array.length - 1
#             if ele == array[i + 1]
#                 return false
#             end
#         end
#     end
#     return true
# end

# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true

# def char_indices(string)

#     hash = Hash.new { |h,k| h[k] = [] } 
    
#     string.each_char.each_with_index do |char,i|
#         hash[char] << i
#     end
#     hash
# end


# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}

# def longest_streak(string)
#     character = ""
#     streak = 1
#     longestStreak = 1
#     longestStreakChar = ""
#     str = ""

#     string.each_char.with_index do |char,i|
#         if i != 0
#             if char == string[i - 1]
#                 streak += 1
#                  if streak >= longestStreak
#                     longestStreak = streak
#                     longestStreakChar = char
#                  end
#             else
#                 character = char 
#                 streak = 1
#                 if longestStreak == 1
#                     longestStreakChar = char
#                 end
#             end
#         else
#             character = char
#             longestStreakChar = char 
#         end

#     end

#     (1..longestStreak).each do |num|
#         str += longestStreakChar
#     end

#     str
# end


# p longest_streak('a')           # => 'a'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy
# p longest_streak('aaabbb')      # => 'bbb'
# p longest_streak('abc')         # => 'c'

# def prime?(num)
#     if num < 2
#       return false
#     end
  
#     (2...num).each do |factor|
#       if num % factor == 0
#         return false
#       end
#     end
  
#     return true
#   end

# def bi_prime?(number)

#     (2..number).each do |num1|
#         (2..number).each do |num2|
#             if num1 * num2 == number
#                 return true if prime?(num1) && prime?(num2)
#             end
#         end
#     end
#     false
# end

# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(94)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false



def vigenere_cipher(message,keys)

        alphabet = "abcdefghijklmnopqrstuvwxyz"
        new_str = ""
        i = -1
        
            message.each_char do |char|
                i += 1
                if i == keys.length
                    i = 0
                end
            old_idx = alphabet.index(char)

            new_idx = old_idx + keys[i]
            new_char = alphabet[new_idx % 26]      
            new_str += new_char
            end
        return new_str
end



p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
p vigenere_cipher("yawn", [5, 1])             # => "dbbo"