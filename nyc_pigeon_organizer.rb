# Write your code here!

# def nyc_pigeon_organizer(data)
#   organized = {}

#   data.each do |trait, options|
#     options.each do |option, pigeons|
#       pigeons.each do |pigeon|
#         organized[pigeon] ||= {}
#         if trait == :gender || trait == :lives
#           organized[pigeon][trait] = option.to_s
#         else
#           organized[pigeon][trait] ||= []
#           organized[pigeon][trait] << option.to_s
#         end
#       end
#     end
#   end

#   organized
# end

# SUPER UNREADABLE, BUT KIND OF COOL ANSWER USING INJECT

# def nyc_pigeon_organizer(data)
#   data.inject({}) do |memo, trait_array|
#     trait_array[1].each do |option, pigeons|
#       pigeons.each do |pigeon|
#         memo[pigeon] ||= {}
#         if trait_array[0] == :color
#           memo[pigeon][trait_array[0]] ||= []
#           memo[pigeon][trait_array[0]] << option.to_s
#         else
#           memo[pigeon][trait_array[0]] = option.to_s
#         end
#       end
#     end
#     memo
#   end
# end

# THIS WORKS BUT IS STUPID COMPLEX
# blakes solution with comments
# def nyc_pigeon_organizer(data)

#   new_pigeon = {}
#   pigeon_data.each_pair do |key, value|
#     # keys color, gender, lives
#     # value => {
#     #   :purple => ["Theo", "Peter Jr.", "Lucky"],
#     #   :grey => ["Theo", "Peter Jr.", "Ms .K"],
#     #   :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
#     #   :brown => ["Queenie", "Alex"]
#     # }
#     value.each_pair do |attribute, name_array|
#       # attribute => purple, grey
#       # name array => ["Theo", "Peter Jr.", "Lucky"]
#       name_array.each do |name|
#         # "theo"
#         if new_pigeon[name].nil?
#           new_pigeon[name] = {}
#         end
#         # new_pigeon = {"theo" => {:color => []}}
#         if new_pigeon[name][:color].nil?
#           new_pigeon[name][:color] = []
#         end
#         if key == :color
#           new_pigeon[name][key] << attribute
#         else
#           # name => "theo", "key" => gender or lives, "attribute" => "male", female, subway
#           new_pigeon[name][key] = attribute
#         end
#       end
#     end
#   end
# end

def nyc_pigeon_organizer(data)
  organized = {}

  data.each do |trait, options|
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        organized[pigeon] ||= {}
        organized[pigeon][trait] ||= ''
        if organized[pigeon][trait].size > 0
          organized[pigeon][trait] = (organized[pigeon][trait].split << option.to_s).flatten
        else
          organized[pigeon][trait] = option.to_s
        end
      end
    end

    array = false
    organized.keys.each do |pigeon|
      if organized[pigeon][trait].is_a?(Array)
        array = true
      end
    end

    if array
      organized.each do |pigeon, traits|
        if !organized[pigeon][trait].is_a?(Array)
          organized[pigeon][trait] = [organized[pigeon][trait]]
        end
      end
    end

  end

  organized
end