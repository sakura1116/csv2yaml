require 'csv'
require 'yaml'
require 'pp'

path_to_csv = 'city_code.csv'
#path_to_csv = 'city_code_special_city.csv'
path_to_yaml = 'city_code.yaml'
#path_to_yaml = 'city_code_special_city.yaml'

csv = CSV.read(path_to_csv, :headers => true).map(&:to_hash)

hash = {}
csv.each do |row|
   city = row['city_code']
   hash[city] = row
end

File.open(path_to_yaml, 'w') { |f| f.write(hash.to_yaml) }
pp yaml = YAML.load_file(path_to_yaml)
