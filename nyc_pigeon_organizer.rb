require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_names = []
  new_pigeon_data = {}
  data.each do |data_type, spec|
    spec.each do |da_spec, names|
      names.each do |name|
        unless pigeon_names.include?(name)
          pigeon_names.push(name)
        end 
      end
    end 
  end
  pigeon_names.each do |namae|
    new_pigeon_data[namae] = {color: [], gender: [], lives: []}
    data.each do |data_type, spec|
      spec.each do |da_spec, names|
        if names.include?(namae) 
          binding.pry
          new_pigeon_data[namae][spec].push(da_spec)
          binding.pry
        end 
      end 
    end
  end
end