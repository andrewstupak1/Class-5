# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
apple = Company.find_by({"name" => "Apple"})
amazon = Company.find_by({"name" => "Amazon"})

# 1. insert new rows in the contacts table with relationship to a company
new_contact = Contact.new
new_contact ["first_name"] = "Tim"
new_contact ["last_name"] = "Cook"
new_contact ["email"] = "tim@apple.com"
new_contact ["company_id"] = apple["id"]
new_contact.save

new_contact = Contact.new
new_contact ["first_name"] = "Jim"
new_contact ["last_name"] = "Bezos"
new_contact ["email"] = "JB@amazon.com"
new_contact ["company_id"] = amazon["id"]
new_contact.save

new_contact = Contact.new
new_contact ["first_name"] = "Andrew"
new_contact ["last_name"] = "Stupak"
new_contact ["email"] = "AS@apple.com"
new_contact ["company_id"] = apple["id"]
new_contact.save

# 2. How many contacts work at Apple?
apple_contacts = Contact.where({"company_id" => apple["id"]})
puts "Apple contacts: #{apple_contacts.count}"


# 3. What is the full name of each contact who works at Apple?
for contact in apple_contacts
    puts "#{contact["first_name"]} #{contact ["last_name"]}"
end