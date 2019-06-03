require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_names = []
  data.each do |data_type, spec|
    spec.each do |da_spec, names|
      names.each do |name|
        unless pigeon_names.include?(name)
          pigeon_names.push(name)
        end 
      end
    end 
  end
  pigeon_names.each do |name|
    
end