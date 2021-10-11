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
  svg range:element, file:'lightning.svg', layout: :se3
  svg range:element, file:'ice.svg', layout: :we1
  # Beast ELement
  element = data.element.each_index.select { |i| data.element[i] == "[B]"}
  svg range:element, file:'beast.svg', layout: :element
  svg range:element, file:'fire.svg', layout: :se1
  svg range:element, file:'water.svg', layout: :we1
  # Demon ELement
  element = data.element.each_index.select { |i| data.element[i] == "[D]"}
  svg range:element, file:'demon.svg', layout: :element
  svg range:element, file:'water.svg', layout: :se1
  svg range:element, file:'fire.svg', layout: :we1
  # Earth Element
  element = data.element.each_index.select { |i| data.element[i] == "[E]"}
  svg range:element, file:'earth.svg', layout: :element
  svg range:element, file:'plant.svg', layout: :se1
  svg range:element, file:'water.svg', layout: :se2
  svg range:element, file:'ice.svg', layout: :se3
  svg range:element, file:'lightning.svg', layout: :we1
  # Fire Element
  element = data.element.each_index.select { |i| data.element[i] == "[F]"}
  svg range:element, file:'fire.svg', layout: :element
  svg range:element, file:'metal.svg', layout: :se1
  svg range:element, file:'demon.svg', layout: :se2
  svg range:element, file:'ice.svg', layout: :se3
  svg range:element, file:'beast.svg', layout: :we1
  svg range:element, file:'plant.svg', layout: :we2
  svg range:element, file:'air.svg', layout: :we3
  # Ice Element
  element = data.element.each_index.select { |i| data.element[i] == "[I]"}
  svg range:element, file:'ice.svg', layout: :element
  svg range:element, file:'air.svg', layout: :se1
  svg range:element, file:'earth.svg', layout: :we1
  svg range:element, file:'plant.svg', layout: :we2
  svg range:element, file:'fire.svg', layout: :we3
  # Lightning Element
  element = data.element.each_index.select { |i| data.element[i] == "[L]"}
  svg range:element, file:'lightning.svg', layout: :element
  svg range:element, file:'earth.svg', layout: :se1
  svg range:element, file:'metal.svg', layout: :we1
  svg range:element, file:'water.svg', layout: :we2
  svg range:element, file:'air.svg', layout: :we3
  # Metal Element
  element = data.element.each_index.select { |i| data.element[i] == "[M]"}
  svg range:element, file:'metal.svg', layout: :element
  svg range:element, file:'water.svg', layout: :se1
  svg range:element, file:'lightning.svg', layout: :se2
  svg range:element, file:'spirit.svg', layout: :se3
  svg range:element, file:'fire.svg', layout: :we1
  svg range:element, file:'air.svg', layout: :we2
  svg range:element, file:'undead.svg', layout: :we3
  # Plant Element
  element = data.element.each_index.select { |i| data.element[i] == "[P]"}
  svg range:element, file:'plant.svg', layout: :element
  svg range:element, file:'fire.svg', layout: :se1
  svg range:element, file:'ice.svg', layout: :se2
  svg range:element, file:'undead.svg', layout: :se3
  svg range:element, file:'water.svg', layout: :we1
  svg range:element, file:'earth.svg', layout: :we2
  svg range:element, file:'spirit.svg', layout: :we3
  # Spirit ELement
  element = data.element.each_index.select { |i| data.element[i] == "[S]"}
  svg range:element, file:'spirit.svg', layout: :element
  svg range:element, file:'plant.svg', layout: :se1
  svg range:element, file:'metal.svg', layout: :we1
  # undead ELement
  element = data.element.each_index.select { |i| data.element[i] == "[U]"}
  svg range:element, file:'undead.svg', layout: :element
  svg range:element, file:'metal.svg', layout: :se1
  svg range:element, file:'plant.svg', layout: :we1
  # Water Element
  element = data.element.each_index.select { |i| data.element[i] == "[W]"}
  svg range:element, file:'water.svg', layout: :element
  svg range:element, file:'plant.svg', layout: :se1
  svg range:element, file:'lightning.svg', layout: :se2
  svg range:element, file:'beast.svg', layout: :se3
  svg range:element, file:'earth.svg', layout: :we1
  svg range:element, file:'metal.svg', layout: :we2
  svg range:element, file:'beast.svg', layout: :we3
  





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
