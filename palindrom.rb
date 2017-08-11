def prime?(n)
  (2..Math.sqrt(n)).none? { |f| n % f == 0 }
end

def palindrom
  @result = {}
  mult = (10_000..99_999).select { |v| prime?(v) }.reverse
  mult.each do |x|
    mult.each do |y|
      s = (x * y).to_s
      if s == s.reverse
        @result["Multipliers: #{x}, #{y}"] = x * y
      end
    end
  end
  
  max_palindrom = @result.values.max
  max_mult = @result.select { |k, v| v == max_palindrom }.keys
  puts "#{max_mult[0]}, palindrom: #{max_palindrom}"
end

palindrom
