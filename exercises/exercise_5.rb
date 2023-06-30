require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Your code goes here ...
### Exercise 5: Calculations

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

total_revenue = Store.sum(:annual_revenue)
puts "Total Company Revenue: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average Company Revenue: $#{average_revenue}"

number_of_stores_generating_one_million_or_more_annual_sales = Store.where('annual_revenue > ?', 1_000_000).count
puts "The number of stores that are generating $1M or more in annual sales #{number_of_stores_generating_one_million_or_more_annual_sales}"
