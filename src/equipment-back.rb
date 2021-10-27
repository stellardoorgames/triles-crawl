require 'squib'
require_relative 'version'
require_relative 'sheets'

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Equipment

width = '3.5 in'
height = '2.5 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/equipment-back.yml'

  svg file: 'back_equipment.svg', width: width, height: height

  
  text str: data.level, layout: :level
  

  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  #save format: :png, prefix: 'equipment_back'

  build(:pnp) do
    save_sheet prefix: 'pnp_equipment_back_',
               trim: '0.125in',
               columns: 3, rows: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_equipment_back_',
			   trim: 0,
	           columns: 10, rows: 7,
			   rotate: true
			   #rtl: true
  end

end
