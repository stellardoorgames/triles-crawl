require 'squib'
require_relative 'version'
require_relative 'sheets'

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Items

width = '2 in'
height = '2 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/items.yml'

  svg file: 'bkg_items.svg', width: width, height: height


  text str: data.name, layout: :name
  svg file: data.image.map{ |s| if (s != nil) then s += ".svg" end }, layout: :image
  #text str: data.image, layout: :image

  text str: data.text, layout: :text


  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  save format: :png, prefix: 'items_'

  build(:pnp) do
    save_sheet prefix: 'pnp_items_',
               trim: '0.125in',
               columns: 3, rows: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_items_',
			   trim: 0,
	           columns: 10, rows: 7
  end

end
