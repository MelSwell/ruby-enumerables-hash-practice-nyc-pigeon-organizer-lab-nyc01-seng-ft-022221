require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |k, v|
    v.each do |inner_key, names|
      names.each do |name|
        
        if !new_hash[name]
          new_hash[name] = {}
        end
        
        if !new_hash[name][k]
          new_hash[name][k] = []
        end
        
        new_hash[name][k] << inner_key.to_s
        binding.pry
      end
    end
  end
  new_hash
end

nyc_pigeon_organizer({
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      })