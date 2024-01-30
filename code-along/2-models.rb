# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).
puts "there are #{Company.all.count} companies"
# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table

new_company = Company.new

#puts new_company.inspect

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://www.apple.com"
new_company.save

#puts new_company.inspect

puts "there are #{Company.all.count} companies" 

new_company = Company.new
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "WA"
new_company["url"] = "https://www.amazon.com"
new_company.save

puts "there are #{Company.all.count} companies" 

new_company = Company.new
new_company["name"] = "Twitter"
new_company["city"] = "San Fransisco"
new_company["state"] = "CA"
new_company["url"] = "https://www.twitter.com"
new_company.save

puts "there are #{Company.all.count} companies" 

# 3. query companies table to find all row with California company
all_companies = Company.all
#puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
#puts cali_companies.inspect

puts "Companies in Cali: #{cali_companies.count}"

# 4. query companies table to find single row for Apple
#apple = Company.where("name" => "apple")[0]
apple = Company.find_by("name" => "Apple")
#puts apple.inspect

# 5. read a row's column value
puts apple["url"]

# 6. update a row's column value
amazon = Company.find_by({"name" => "Amazon"})
amazon["url"] = "https://www.amazon.com"
amazon.save

# 7. delete a row

twitter = Company.find_by({"name" => "Twitter"})
twitter.destroy

puts "there are #{Company.all.count} companies" 
