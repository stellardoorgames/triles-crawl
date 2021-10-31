require 'squib'
require_relative 'version'
require_relative 'sheets'

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Equipment

width = '3.5 in'
height = '2.5 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/equipment.yml'

  svg file: 'bkg_equipment.svg', width: width, height: height

  text str: data.name, layout: :name

  text str: data.equip, layout: :equip do |embed|
	embed.svg key: '[handr]', file: 'img/handr.svg', layout: :embedded
	embed.svg key: '[handl]', file: 'img/handl.svg', layout: :embedded
	embed.svg key: '[feet]',  file: 'img/feet.svg',  layout: :embedded
  end

  text str: data.category, layout: :category do |embed|
	embed.svg key: '[blade]',       file: 'img/blade.svg',       layout: :embedded
	embed.svg key: '[small-blade]', file: 'img/small-blade.svg', layout: :embedded
	embed.svg key: '[bow]', 		file: 'img/bow.svg', 	 	 layout: :embedded
	embed.svg key: '[staff]', 		file: 'img/staff.svg', 	 	 layout: :embedded
	embed.svg key: '[blunt]', 		file: 'img/blunt.svg', 	 	 layout: :embedded
	embed.svg key: '[shield]', 		file: 'img/shield.svg', 	 layout: :embedded
  end

  text str: data.cls, layout: :class

  text str: data.text, layout: :text do |embed|
	embed.svg key: '[luck]',  file: 'img/luck.svg',      layout: :embedded_xsmall
	embed.svg key: '[coin]',  file: 'img/coin.svg',      layout: :embedded_xsmall
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
  
  #text str: data.buy.map{ |s| if (s != nil) then s = "Cost: " + s end }, layout: :buy do |embed|
  text str: data.cost, layout: :buy do |embed|
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
  end

  #text str: data.level, layout: :level

  
  # Air Element
#   element = data.element.each_index.select { |i| data.element[i] == "Air"}
#   svg range:element, file:'air.svg',       layout: :element
#   svg range:element, file:'metal.svg',     layout: :se1
#   svg range:element, file:'fire.svg',      layout: :se2
#   svg range:element, file:'lightning.svg', layout: :se3
#   svg range:element, file:'ice.svg',       layout: :we1
#   # Beast ELement
#   element = data.element.each_index.select { |i| data.element[i] == "Beast"}
#   svg range:element, file:'beast.svg', layout: :element
#   svg range:element, file:'fire.svg',  layout: :se1
#   svg range:element, file:'water.svg', layout: :we1
#   # Demon ELement
#   element = data.element.each_index.select { |i| data.element[i] == "Demon"}
#   svg range:element, file:'demon.svg', layout: :element
#   svg range:element, file:'water.svg', layout: :se1
#   svg range:element, file:'fire.svg',  layout: :we1
#   # Earth Element
#   element = data.element.each_index.select { |i| data.element[i] == "Earth"}
#   svg range:element, file:'earth.svg',     layout: :element
#   svg range:element, file:'plant.svg',     layout: :se1
#   svg range:element, file:'water.svg',     layout: :se2
#   svg range:element, file:'ice.svg',       layout: :se3
#   svg range:element, file:'lightning.svg', layout: :we1
#   # Fire Element
#   element = data.element.each_index.select { |i| data.element[i] == "Fire"}
#   svg range:element, file:'fire.svg',  layout: :element
#   svg range:element, file:'metal.svg', layout: :se1
#   svg range:element, file:'demon.svg', layout: :se2
#   svg range:element, file:'ice.svg',   layout: :se3
#   svg range:element, file:'beast.svg', layout: :we1
#   svg range:element, file:'plant.svg', layout: :we2
#   svg range:element, file:'air.svg',   layout: :we3
#   # Ice Element
#   element = data.element.each_index.select { |i| data.element[i] == "Ice"}
#   svg range:element, file:'ice.svg',   layout: :element
#   svg range:element, file:'air.svg',   layout: :se1
#   svg range:element, file:'earth.svg', layout: :we1
#   svg range:element, file:'plant.svg', layout: :we2
#   svg range:element, file:'fire.svg',  layout: :we3
#   # Lightning Element
#   element = data.element.each_index.select { |i| data.element[i] == "Lightning"}
#   svg range:element, file:'lightning.svg', layout: :element
#   svg range:element, file:'earth.svg',     layout: :se1
#   svg range:element, file:'metal.svg',     layout: :we1
#   svg range:element, file:'water.svg',     layout: :we2
#   svg range:element, file:'air.svg',       layout: :we3
#   # Metal Element
#   element = data.element.each_index.select { |i| data.element[i] == "Metal"}
#   svg range:element, file:'metal.svg',     layout: :element
#   svg range:element, file:'water.svg',     layout: :se1
#   svg range:element, file:'lightning.svg', layout: :se2
#   svg range:element, file:'spirit.svg',    layout: :se3
#   svg range:element, file:'fire.svg',      layout: :we1
#   svg range:element, file:'air.svg',       layout: :we2
#   svg range:element, file:'undead.svg',    layout: :we3
#   # Plant Element
#   element = data.element.each_index.select { |i| data.element[i] == "Plant"}
#   svg range:element, file:'plant.svg',  layout: :element
#   svg range:element, file:'fire.svg',   layout: :se1
#   svg range:element, file:'ice.svg',    layout: :se2
#   svg range:element, file:'undead.svg', layout: :se3
#   svg range:element, file:'water.svg',  layout: :we1
#   svg range:element, file:'earth.svg',  layout: :we2
#   svg range:element, file:'spirit.svg', layout: :we3
#   # Spirit ELement
#   element = data.element.each_index.select { |i| data.element[i] == "Spirit"}
#   svg range:element, file:'spirit.svg', layout: :element
#   svg range:element, file:'plant.svg',  layout: :se1
#   svg range:element, file:'metal.svg',  layout: :we1
#   # undead ELement
#   element = data.element.each_index.select { |i| data.element[i] == "Undead"}
#   svg range:element, file:'undead.svg', layout: :element
#   svg range:element, file:'metal.svg',  layout: :se1
#   svg range:element, file:'plant.svg',  layout: :we1
#   # Water Element
#   element = data.element.each_index.select { |i| data.element[i] == "Water"}
#   svg range:element, file:'water.svg',     layout: :element
#   svg range:element, file:'plant.svg',     layout: :se1
#   svg range:element, file:'lightning.svg', layout: :se2
#   svg range:element, file:'beast.svg',     layout: :se3
#   svg range:element, file:'earth.svg',     layout: :we1
#   svg range:element, file:'metal.svg',     layout: :we2
#   svg range:element, file:'beast.svg',     layout: :we3
  
#   text str: data.element.map { |s| if (s != nil) then s  = "- " + s end }, layout: :element_text

  

  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  save format: :png, prefix: 'equipment_'

  build(:pnp) do
    save_sheet prefix: 'pnp_equipment_',
               trim: '0.125in',
               columns: 3, rows: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_equipment_',
			   trim: 0,
	           columns: 10, rows: 7,
			   rotate: true
  end

end
