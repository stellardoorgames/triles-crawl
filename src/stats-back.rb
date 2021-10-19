require 'squib'
require_relative 'version'
require_relative 'sheets'

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Stats

width = '2 in'
height = '2 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/stats-back.yml'

  svg file: data.back.map{ |s| s += ".svg" }, layout: :back


  #text str: data.creature, layout: :creature
  
  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  #save format: :png

  build(:pnp) do
    save_sheet prefix: 'pnp_stats_back_',
               trim: '0.125in',
               columns: 3, rows: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_stats_back_',
			   trim: 0,
	           columns: 10, rows: 7,
			   rtl: true
  end

end
