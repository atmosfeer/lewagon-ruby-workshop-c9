def vampire_reaction(your_weapon)
  if your_weapon == "stake"
    return "You win! Vampire dies"
  else
    return "Vampire laughs at your stupid #{your_weapon}"
  end
end

def vampire_reaction_enhanced(your_weapon, material)
  if your_weapon == "stake" && material == "wood"
    return "Vampire disintegrates"
  elsif material == "silver"
    return "Vampire explodes"
  else
    return "Vampire laughs at your stupid #{your_weapon} made of #{material}"
  end
end


########### NEEDED FOR TESTING | DO NOT DELETE ##################
require 'rspec'
RSpec::Core::Runner.run(['../spec/vampire_weapon_spec.rb'])
#################################################################
