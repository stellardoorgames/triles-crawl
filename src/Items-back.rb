require 'squib'
require_relative 'version'
require_relative 'sheets'

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Items

width = '2 in'
height = '2 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/Items.yml'

  svg file: data.back.map{ |s| if (s != nil) then s += ".svg" end }, width: width, height: height


  #text str: data.name, layout: :name
  
  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  #save format: :png, prefix: 'items_back_'

  build(:pnp) do
    save_sheet prefix: 'pnp_items_back_',
               trim: '0.125in',
               columns: 3, rows: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_items_back_',
			   trim: 0,
	           columns: 10, rows: 7
  end

end
