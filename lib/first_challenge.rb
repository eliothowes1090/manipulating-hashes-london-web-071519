def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts.each do |name, details|
    if name == "Jon Snow"
      details.each do |attribute, icecream|
        if attribute == :favorite_icecream_flavors
          attribute.shift
        end
      end
    end
  end

  # contacts.delete_if {|key, value| value == "strawberry"}
  return contacts

  #remember to return your newly altered contacts hash!
  contacts
end
