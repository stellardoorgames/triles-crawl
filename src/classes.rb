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

  text str: data['StartingTokens'].map { |s| s = "Starting Tokens:\n" + s}, layout: :starting_tokens do |embed|
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_small
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_small
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_small
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_small
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_small
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_small
  end

  text str: data['StartingVitality'], layout: :starting_vitality

  text str: data.ability1, layout: :ability1 do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_xsmall
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_xsmall
	embed.svg key: '[gem]',   file: 'img/gem.svg',       layout: :embedded_xsmall
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_xsmall
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_xsmall
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_xsmall
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_xsmall
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_xsmall
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_xsmall
	embed.svg key: '[stri]',  file: 'img/stri.svg',      layout: :embedded_xsmall
	embed.svg key: '[dexi]',  file: 'img/dexi.svg',      layout: :embedded_xsmall
	embed.svg key: '[agli]',  file: 'img/agli.svg',      layout: :embedded_xsmall
	embed.svg key: '[inti]',  file: 'img/inti.svg',      layout: :embedded_xsmall
	embed.svg key: '[peri]',  file: 'img/peri.svg',      layout: :embedded_xsmall
	embed.svg key: '[viti]',  file: 'img/viti.svg',      layout: :embedded_xsmall
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
  end

  text str: data.ability2, layout: :ability2 do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_xsmall
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_xsmall
	embed.svg key: '[gem]',   file: 'img/gem.svg',       layout: :embedded_xsmall
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_xsmall
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_xsmall
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_xsmall
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_xsmall
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_xsmall
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_xsmall
	embed.svg key: '[stri]',  file: 'img/stri.svg',      layout: :embedded_xsmall
	embed.svg key: '[dexi]',  file: 'img/dexi.svg',      layout: :embedded_xsmall
	embed.svg key: '[agli]',  file: 'img/agli.svg',      layout: :embedded_xsmall
	embed.svg key: '[inti]',  file: 'img/inti.svg',      layout: :embedded_xsmall
	embed.svg key: '[peri]',  file: 'img/peri.svg',      layout: :embedded_xsmall
	embed.svg key: '[viti]',  file: 'img/viti.svg',      layout: :embedded_xsmall
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
  end

  text str: data.ability3, layout: :ability3 do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_xsmall
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_xsmall
	embed.svg key: '[gem]',   file: 'img/gem.svg',       layout: :embedded_xsmall
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_xsmall
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_xsmall
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_xsmall
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_xsmall
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_xsmall
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_xsmall
	embed.svg key: '[stri]',  file: 'img/stri.svg',      layout: :embedded_xsmall
	embed.svg key: '[dexi]',  file: 'img/dexi.svg',      layout: :embedded_xsmall
	embed.svg key: '[agli]',  file: 'img/agli.svg',      layout: :embedded_xsmall
	embed.svg key: '[inti]',  file: 'img/inti.svg',      layout: :embedded_xsmall
	embed.svg key: '[peri]',  file: 'img/peri.svg',      layout: :embedded_xsmall
	embed.svg key: '[viti]',  file: 'img/viti.svg',      layout: :embedded_xsmall
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
  end

  text str: data.ability4, layout: :ability4 do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_xsmall
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_xsmall
	embed.svg key: '[gem]',   file: 'img/gem.svg',       layout: :embedded_xsmall
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_xsmall
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_xsmall
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_xsmall
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_xsmall
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_xsmall
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_xsmall
	embed.svg key: '[stri]',  file: 'img/stri.svg',      layout: :embedded_xsmall
	embed.svg key: '[dexi]',  file: 'img/dexi.svg',      layout: :embedded_xsmall
	embed.svg key: '[agli]',  file: 'img/agli.svg',      layout: :embedded_xsmall
	embed.svg key: '[inti]',  file: 'img/inti.svg',      layout: :embedded_xsmall
	embed.svg key: '[peri]',  file: 'img/peri.svg',      layout: :embedded_xsmall
	embed.svg key: '[viti]',  file: 'img/viti.svg',      layout: :embedded_xsmall
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
  end

  text str: data.shared_ability1, layout: :shared_ability1 do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_xsmall
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_xsmall
	embed.svg key: '[gem]',   file: 'img/gem.svg',       layout: :embedded_xsmall
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_xsmall
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_xsmall
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_xsmall
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_xsmall
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_xsmall
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_xsmall
	embed.svg key: '[stri]',  file: 'img/stri.svg',      layout: :embedded_xsmall
	embed.svg key: '[dexi]',  file: 'img/dexi.svg',      layout: :embedded_xsmall
	embed.svg key: '[agli]',  file: 'img/agli.svg',      layout: :embedded_xsmall
	embed.svg key: '[inti]',  file: 'img/inti.svg',      layout: :embedded_xsmall
	embed.svg key: '[peri]',  file: 'img/peri.svg',      layout: :embedded_xsmall
	embed.svg key: '[viti]',  file: 'img/viti.svg',      layout: :embedded_xsmall
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
  end

  text str: data.shared_ability2, layout: :shared_ability2 do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_xsmall
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_xsmall
	embed.svg key: '[gem]',   file: 'img/gem.svg',       layout: :embedded_xsmall
	embed.svg key: '[str]',   file: 'img/str.svg',       layout: :embedded_xsmall
	embed.svg key: '[dex]',   file: 'img/dex.svg',       layout: :embedded_xsmall
	embed.svg key: '[agl]',   file: 'img/agl.svg',       layout: :embedded_xsmall
	embed.svg key: '[int]',   file: 'img/int.svg',       layout: :embedded_xsmall
	embed.svg key: '[per]',   file: 'img/per.svg',       layout: :embedded_xsmall
	embed.svg key: '[vit]',   file: 'img/vit.svg',       layout: :embedded_xsmall
	embed.svg key: '[stri]',  file: 'img/stri.svg',      layout: :embedded_xsmall
	embed.svg key: '[dexi]',  file: 'img/dexi.svg',      layout: :embedded_xsmall
	embed.svg key: '[agli]',  file: 'img/agli.svg',      layout: :embedded_xsmall
	embed.svg key: '[inti]',  file: 'img/inti.svg',      layout: :embedded_xsmall
	embed.svg key: '[peri]',  file: 'img/peri.svg',      layout: :embedded_xsmall
	embed.svg key: '[viti]',  file: 'img/viti.svg',      layout: :embedded_xsmall
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
  end
  

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
