require 'squib'
require 'irb'
require 'rake/clean'

# Add Rake's clean & clobber tasks
CLEAN.include('_output/*').exclude('_output/gitkeep.txt')

desc 'By default, just build the decks without extra options'
task default: [:stats]

desc 'Build everything, with all the options'
task all: [:with_pnp, :with_tts, :with_proofs, :stats]

desc 'Build for Tabletop Simulator'
task tts: [:with_tts, :stats]

desc 'Build the Stats deck'
task(:stats)     { load 'src/stats.rb' }

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
