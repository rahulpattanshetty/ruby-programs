require 'pp'
restaurants= {
    "adigas" => {
        "location" => "Jayanagar", 
        "type" => "Quick Bite",
        "rating" => 3.4,
        "phone_number" => "N/A",
        "cuisines" => ["South India", "Chinese"],
        "cost_for_two" => 150, 
        "addresses" => "Jayanagar 4th Block",
        "highlights" => ["Breakfast", "Veg"], 
        "menu" => {
            "south_indian" => {
                "idly" => 26,
                "vade" => 24, 
                "coffee" => 15, 
                "masala_dosa" => 43,
            }, "Chinese" => {
                    "noodles" => 80,
                    "soup" => 40,
                    "veg" => {
                        "monchow" => 100
                    },
                    "non_veg" => {
                        "chicken noodles" => 200 # here the key has spaces inbetween
                    }
            }
        }
    }
}

def key_sanitizer(key)
    key.split(" ").join("_").to_sym
end

def value_hash(data)
    details = {}
    data.each do |key,value|
        details[key_sanitizer(key)] = (value.is_a? Hash) ? value_hash(value) : value
    end
    return details
end
def convert_sym(data)
    details = {}
    data.each do |key,value|
        details[key_sanitizer(key)] = (value.is_a? Hash) ? convert_sym(value) : value
    end
    return details
end
pp convert_sym(restaurants)
