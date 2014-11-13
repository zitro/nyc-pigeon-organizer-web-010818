# Write your code here!

def nyc_pigeon_organizer(data)
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

# SUPER UNREADABLE, BUT KIND OF COOL ANSWER USING INJECT

# def nyc_pigeon_organizer(data)
#   data.inject({}) do |memo, trait_array|
#     trait_array[1].each do |option, pigeons|
#       pigeons.each do |pigeon|
#         memo[pigeon] ||= {}
#         memo[pigeon][trait_array[0]] ||= []
#         memo[pigeon][trait_array[0]] << option.to_s
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
#         new_pigeon[name][key] << attribute
#       end
#     end
#   end
# end

# def nyc_pigeon_organizer(data)
#   organized = {}

#   data.each do |trait, options|
#     options.each do |option, pigeons|
#       pigeons.each do |pigeon|
#         organized[pigeon] ||= {}
#         organized[pigeon][trait] ||= []
#         organized[pigeon][trait] << option.to_s
#       end
#     end
#   end

#   organized
# end