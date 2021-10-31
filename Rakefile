require 'squib'
require 'irb'
require 'rake/clean'

# Add Rake's clean & clobber tasks
CLEAN.include('_output/*').exclude('_output/gitkeep.txt')

desc 'By default, just build the decks without extra options'
task default: [:actions, :actions_back, :items, :skills, :equipment, :equipment_back, :classes]

desc 'Build everything, with all the options'
task all: [:with_pnp, :with_tts, :with_proofs, :actions, :actions_back, :items, :skills, :equipment, :equipment_back, :classes]

desc 'Build for Tabletop Simulator'
task tts: [:with_tts, :actions, :actions_back, :items, :items_back, :skills, :equipment, :equipment_back, :classes]

desc 'Build Equipment for TTS'
task tts_equipment: [:with_tts, :equipment, :equipment_back]

desc 'Build Class cards for TTS'
task tts_classes: [:with_tts, :classes]

desc 'Build Skill cards for TTS'
task tts_skills: [:with_tts, :skills]

desc 'Build Item cards for TTS'
task tts_items: [:with_tts, :items, :items_back]

desc 'Build the Actions deck'
task(:actions)        { load 'src/actions.rb' }
desc 'Build the Actions backs'
task(:actions_back)   { load 'src/actions-back.rb' } 
desc 'Build the Items deck'
task(:items)          { load 'src/items.rb' }
desc 'Build the Items backs'
task(:items_back)     { load 'src/items-back.rb' }
desc 'Build the Equipment deck'
task(:equipment)      { load 'src/equipment.rb' }
desc 'Build the Skills deck'
task(:skills)         { load 'src/skills.rb' }
desc 'Build the Equipment backs'
task(:equipment_back) { load 'src/equipment-back.rb' }
desc 'Build the Class cards'
task(:classes)        { load 'src/classes.rb' }

desc 'Enable proof lines'
task(:with_proofs) do
  puts "Enabling proofing lines."
  Squib.enable_build_globally :proofs
end

desc 'Enable print-and-play builds'
task(:with_pnp) do
  puts "Enabling print-and-play builds."
  Squib.enable_build_globally :pnp
end

desc 'Enable Tabletop Simulator builds'
task(:with_tts) do
  puts "Enabling Tabletop Simulator builds."
  Squib.enable_build_globally :tts
end
