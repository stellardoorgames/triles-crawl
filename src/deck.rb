require 'squib'
require_relative 'version'
require_relative 'sheets'

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Actions

width = '2 in'
height = '2 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/deck.yml'

  svg file: 'StatCardBkg001.svg', width: width, height: height


  text str: data.creature, layout: :creature

  text str: data.name, layout: :name

  text str: data.action, layout: :action do |embed|
	embed.svg key: '[north]', file: 'img/north.svg', layout: :embedded_big
	embed.svg key: '[south]', file: 'img/south.svg', layout: :embedded_big
	embed.svg key: '[east]', file: 'img/east.svg', layout: :embedded_big
	embed.svg key: '[west]', file: 'img/west.svg', layout: :embedded_big
	embed.svg key: '[melee]', file: 'img/melee.svg', layout: :embedded_big
	embed.svg key: '[ranged]', file: 'img/ranged.svg', layout: :embedded_big
	embed.svg key: '[magic]', file: 'img/magic.svg', layout: :embedded_big
	embed.svg key: '[star]', file: 'img/star.svg', layout: :embedded_big
	embed.svg key: '[def]', file: 'img/shield.svg', layout: :embedded_big
	end
  
  text str: data.def, layout: :defense
  
  text str: data.skill, layout: :skill do |embed|
	embed.svg key: '[str]', file: 'img/str.svg', layout: :embedded
	embed.svg key: '[agl]', file: 'img/agl.svg', layout: :embedded
	embed.svg key: '[int]', file: 'img/int.svg', layout: :embedded
  end
  text str: data.loot, layout: :loot do |embed|
	embed.svg key: '[coin]', file: 'img/coin.svg', layout: :embedded_small
	embed.svg key: '[gem]', file: 'img/gem.svg', layout: :embedded_small
  end

  text str: data.luck, layout: :luck

  # Air Element
  element = data.element.each_index.select { |i| data.element[i] == "[A]"}
  svg range:element, file:'air.svg', layout: :element
  svg range:element, file:'metal.svg', layout: :se1
  svg range:element, file:'fire.svg', layout: :se2
  svg range:element, file:'lighting.svg', layout: :se3
  svg range:element, file:'ice.svg', layout: :we3
  # Beast ELement
  element = data.element.each_index.select { |i| data.element[i] == "[B]"}
  
  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  save format: :png

  build(:pnp) do
    save_sheet prefix: 'pnp_sheet_',
               trim: '0.125in',
               rows: 3, columns: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_sheet_',
	           rows: 10, columns: 7
  end

end
