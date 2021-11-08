require 'squib'
require_relative 'version'
require_relative 'sheets'

puts Squib::VERSION # prints the Squib version to the console when you run this code

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Skills

width = '2.5 in'
height = '3.5 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/skills.yml'

  svg file: 'bkg_skills.svg', width: width, height: height

  text str: data.name, layout: :name
  text str: data.cls, layout: :class

  svg file: data.range.map{ |s| if (s != nil) then s += '.svg' end }, layout: :range

  text str: data.cost, layout: :cost do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_small
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_small
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_small
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_small
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_small
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_small
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_small
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_small
	embed.svg key: '[A]',     file: 'img/air.svg',       layout: :embedded_small
	embed.svg key: '[E]',     file: 'img/earth.svg',     layout: :embedded_small
	embed.svg key: '[P]',     file: 'img/plant.svg',     layout: :embedded_small
	embed.svg key: '[M]',     file: 'img/metal.svg',     layout: :embedded_small
	embed.svg key: '[F]',     file: 'img/fire.svg',      layout: :embedded_small
	embed.svg key: '[W]',     file: 'img/water.svg',     layout: :embedded_small
	embed.svg key: '[I]',     file: 'img/ice.svg',       layout: :embedded_small
	embed.svg key: '[L]',     file: 'img/lightning.svg', layout: :embedded_small
	embed.svg key: '[B]',     file: 'img/beast.svg',     layout: :embedded_small
	embed.svg key: '[D]',     file: 'img/demon.svg',     layout: :embedded_small
	embed.svg key: '[U]',     file: 'img/undead.svg',    layout: :embedded_small
	embed.svg key: '[S]',     file: 'img/spirit.svg',    layout: :embedded_small
	embed.svg key: '[arrow]', file: 'img/arrow.svg',     layout: :embedded_small
  end

  text str: data.text, layout: :text do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_xsmall
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_xsmall
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_xsmall
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_xsmall
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_xsmall
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_xsmall
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_xsmall
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_xsmall
	embed.svg key: '[A]',     file: 'img/air.svg',       layout: :embedded_xsmall
	embed.svg key: '[E]',     file: 'img/earth.svg',     layout: :embedded_xsmall
	embed.svg key: '[P]',     file: 'img/plant.svg',     layout: :embedded_xsmall
	embed.svg key: '[M]',     file: 'img/metal.svg',     layout: :embedded_xsmall
	embed.svg key: '[F]',     file: 'img/fire.svg',      layout: :embedded_xsmall
	embed.svg key: '[W]',     file: 'img/water.svg',     layout: :embedded_xsmall
	embed.svg key: '[I]',     file: 'img/ice.svg',       layout: :embedded_xsmall
	embed.svg key: '[L]',     file: 'img/lightning.svg', layout: :embedded_xsmall
	embed.svg key: '[B]',     file: 'img/beast.svg',     layout: :embedded_xsmall
	embed.svg key: '[D]',     file: 'img/demon.svg',     layout: :embedded_xsmall
	embed.svg key: '[U]',     file: 'img/undead.svg',    layout: :embedded_xsmall
	embed.svg key: '[S]',     file: 'img/spirit.svg',    layout: :embedded_xsmall
	embed.svg key: '[arrow]', file: 'img/arrow.svg',     layout: :embedded_xsmall
	embed.svg key: '[blade]',       file: 'img/blade.svg',       layout: :embedded_xsmall
	embed.svg key: '[small-blade]', file: 'img/small-blade.svg', layout: :embedded_xsmall
	embed.svg key: '[bow]', 		file: 'img/bow.svg', 	 	 layout: :embedded_xsmall
	embed.svg key: '[staff]', 		file: 'img/staff.svg', 	 	 layout: :embedded_xsmall
	embed.svg key: '[blunt]', 		file: 'img/blunt.svg', 	 	 layout: :embedded_xsmall
	embed.svg key: '[shield]', 		file: 'img/shield.svg', 	 layout: :embedded_xsmall
  end


  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  save format: :png, prefix: 'skills_'

  build(:pnp) do
    save_sheet prefix: 'pnp_skills_',
               trim: '0.125in',
               columns: 3, rows: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_skills_',
			   trim: 0,
	           columns: 10, rows: 7
  end

end
