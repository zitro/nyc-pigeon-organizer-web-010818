def nyc_pigeon_organizer(data)
  #write your code here!
    organized = {}

    data.each do |trait, options|
      options.each do |option, pigeons|
        pigeons.each do |pigeon|
          organized[pigeon] ||= {}
          organized[pigeon][trait] ||= []
          organized[pigeon][trait] << option.to_s
        end
      end
    end

    organized
  end
