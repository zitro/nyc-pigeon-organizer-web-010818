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

# THIS WORKS BUT DOESN'T PASS THE TESTS, AS IT DOESN'T KEEP THE DATA IN THE
# SAME STRUCTURE AT THE SAME LEVEL FOR ALL OPTIONS. I.E., COLOR ISN'T STORED
# AS AN ARRAY IF THERE IS ONLY ONE COLOR. THIS IS BAD. IT'S JUST AN EXAMPLE
# THAT DOESN'T HARD CODE ANYTHING.

# def nyc_pigeon_organizer(data)
#   organized = {}

#   data.each do |trait, options|
#     options.each do |option, pigeons|
#       pigeons.each do |pigeon|
#         organized[pigeon] ||= {}
#         organized[pigeon][trait] ||= ''
#         if organized[pigeon][trait].size > 0
#           organized[pigeon][trait] = organized[pigeon][trait].split << option.to_s
#         else
#           organized[pigeon][trait] = option.to_s
#         end
#       end
#     end
#   end

#   organized
# end