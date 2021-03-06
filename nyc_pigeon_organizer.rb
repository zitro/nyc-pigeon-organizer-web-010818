def nyc_pigeon_organizer(data)
  #write your code here!
    redonePigeonHash = {}

    data.each do |trait, options|
      options.each do |option, pigeons|
        pigeons.each do |pigeon|
          redonePigeonHash[pigeon] ||= {}
          redonePigeonHash[pigeon][trait] ||= []
          redonePigeonHash[pigeon][trait] << option.to_s
        end
      end
    end
    redonePigeonHash
  end
