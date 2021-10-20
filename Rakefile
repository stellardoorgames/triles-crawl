require 'squib'
require 'irb'
require 'rake/clean'

# Add Rake's clean & clobber tasks
CLEAN.include('_output/*').exclude('_output/gitkeep.txt')

desc 'By default, just build the decks without extra options'
task default: [:stats, :stats_back, :equipment, :equipment_back]

desc 'Build everything, with all the options'
task all: [:with_pnp, :with_tts, :with_proofs, :stats, :stats_back, :equipment, :equipment_back]

desc 'Build for Tabletop Simulator'
task tts: [:with_tts, :stats, :stats_back, :equipment, :equipment_back]

desc 'Build Equipment for TTS'
task tts_equipment: [:with_tts, :equipment, :equipment_back]

desc 'Build the Stats deck'
task(:stats)          { load 'src/stats.rb' }
desc 'Build the Stats backs'
task(:stats_back)     { load 'src/stats-back.rb' } 
desc 'Build the Equipment deck'
task(:equipment)      { load 'src/equipment.rb' }
desc 'Build the Equipment backs'
task(:equipment_back) { load 'src/equipment-back.rb' }

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
