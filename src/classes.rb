require 'squib'
require_relative 'version'
require_relative 'sheets'

puts Squib::VERSION # prints the Squib version to the console when you run this code

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Classes

width = '10.75 in'
height = '6.25 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/classes.yml'

  svg file: 'bkg_classes.svg', width: width, height: height

  text str: data.name, layout: :name

  text str: data['StartingVitality'], layout: :starting_vitality

  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  save format: :png, prefix: 'classes_'

  build(:pnp) do
    save_sheet prefix: 'pnp_classes_',
               trim: '0.125in',
               columns: 1, rows: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_classes_',
			   trim: 0,
	           columns: 2, rows: 2
  end

end
