ACTOR = ['Adam Sandler', 'Rob Schneider']

SETTING = [
  'is on a desert island.',
  'is a couple therapist for pandas.',
  'is trapped inside a Quiznos.',
  'is a pizzaphobic pothead.',
  'is a melted cheese denier.'
]


RELATION = [
  'His girlfriend is ',
  'His best friend is',
  'His grandma is',
  'His boss is',
  'His landlord is',
  'His favorite pet is'
]


PUNCHLINE = [
  'a doorman who always highfives children of divorce',
  'a coconut',
  'a dolphin\'s only hope to become Magic Mike',
  'secretly MTV\'s Dan Cortez',
  'a millionaire living in a garbage truck'
]

def plot_generator
  pick_actor + pick_setting + pick_relation + pick_punchline
end


def pick_actor
  ACTOR.sample
end

def pick_setting
  SETTING.sample
end

def pick_relation
  RELATION.sample
end

def pick_punchline
  PUNCHLINE.sample
end





########### NEEDED FOR TESTING | DO NOT DELETE ##################
require 'rspec'
RSpec::Core::Runner.run(['../spec/awesomo_spec.rb'])
#################################################################
