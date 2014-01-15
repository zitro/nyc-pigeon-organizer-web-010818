# Write your code here!

def nyc_pigeon_organizer(data)
  organized = {}

  data.each do |trait, options|
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        organized[pigeon] ||= {}
        if trait == :gender || trait == :lives
          organized[pigeon][trait] = option.to_s
        else
          organized[pigeon][trait] ||= []
          organized[pigeon][trait] << option.to_s
        end
      end
    end
  end

  organized
end