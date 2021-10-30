require 'squib'
require_relative 'version'
require_relative 'sheets'

data = Squib.xlsx file: 'data/game.xlsx', sheet: Sheets::Actions

width = '2 in'
height = '2 in'

Squib::Deck.new(cards: data.nrows, width: width, height: height) do
  background color: :white
  use_layout file: 'layouts/actions.yml'

  svg file: 'bkg_actions.svg', width: width, height: height


  text str: data.action1, layout: :creature
  svg file: data.action1img.map{ |s| if (s != nil) then s += ".svg" end }, layout: :creature_image

  svg file: data.action2img.map{ |s| if (s != nil) then s += ".svg" end }, layout: :action
	
  text str: data.action2, layout: :name
  
  text str: data.def, layout: :defense
  
  svg file: data.skill.map{ |s| if (s != nil) then s += "i.svg" end }, layout: :skill

  text str: data.text, layout: :text do |embed|
	embed.svg key: '[luck]', file: 'img/luck.svg', layout: :embedded_xsmall
  end
  
  text str: data.loot, layout: :loot do |embed|
	embed.svg key: '[coin]', file: 'img/coin.svg', layout: :embedded_small
	embed.svg key: '[gem]', file: 'img/gem.svg', layout: :embedded_small
  end

  svg file: data.luck.map{ |s| if (s != nil) then "die#{s}.svg" end }, layout: :luck

  
  # Air Element
  element = data.element.each_index.select { |i| data.element[i] == "Air"}
  svg range:element, file:'air.svg', layout: :element
  svg range:element, file:'metal.svg', layout: :se1
  svg range:element, file:'fire.svg', layout: :se2
  svg range:element, file:'lightning.svg', layout: :se3
  svg range:element, file:'ice.svg', layout: :we1
  # Beast ELement
  element = data.element.each_index.select { |i| data.element[i] == "Beast"}
  svg range:element, file:'beast.svg', layout: :element
  svg range:element, file:'fire.svg', layout: :se1
  svg range:element, file:'water.svg', layout: :we1
  # Demon ELement
  element = data.element.each_index.select { |i| data.element[i] == "Demon"}
  svg range:element, file:'demon.svg', layout: :element
  svg range:element, file:'water.svg', layout: :se1
  svg range:element, file:'fire.svg', layout: :we1
  # Earth Element
  element = data.element.each_index.select { |i| data.element[i] == "Earth"}
  svg range:element, file:'earth.svg', layout: :element
  svg range:element, file:'plant.svg', layout: :se1
  svg range:element, file:'water.svg', layout: :se2
  svg range:element, file:'ice.svg', layout: :se3
  svg range:element, file:'lightning.svg', layout: :we1
  # Fire Element
  element = data.element.each_index.select { |i| data.element[i] == "Fire"}
  svg range:element, file:'fire.svg', layout: :element
  svg range:element, file:'metal.svg', layout: :se1
  svg range:element, file:'demon.svg', layout: :se2
  svg range:element, file:'ice.svg', layout: :se3
  svg range:element, file:'beast.svg', layout: :we1
  svg range:element, file:'plant.svg', layout: :we2
  svg range:element, file:'air.svg', layout: :we3
  # Ice Element
  element = data.element.each_index.select { |i| data.element[i] == "Ice"}
  svg range:element, file:'ice.svg', layout: :element
  svg range:element, file:'air.svg', layout: :se1
  svg range:element, file:'earth.svg', layout: :we1
  svg range:element, file:'plant.svg', layout: :we2
  svg range:element, file:'fire.svg', layout: :we3
  # Lightning Element
  element = data.element.each_index.select { |i| data.element[i] == "Lightning"}
  svg range:element, file:'lightning.svg', layout: :element
  svg range:element, file:'earth.svg', layout: :se1
  svg range:element, file:'metal.svg', layout: :we1
  svg range:element, file:'water.svg', layout: :we2
  svg range:element, file:'air.svg', layout: :we3
  # Metal Element
  element = data.element.each_index.select { |i| data.element[i] == "Metal"}
  svg range:element, file:'metal.svg', layout: :element
  svg range:element, file:'water.svg', layout: :se1
  svg range:element, file:'lightning.svg', layout: :se2
  svg range:element, file:'spirit.svg', layout: :se3
  svg range:element, file:'fire.svg', layout: :we1
  svg range:element, file:'air.svg', layout: :we2
  svg range:element, file:'undead.svg', layout: :we3
  # Plant Element
  element = data.element.each_index.select { |i| data.element[i] == "Plant"}
  svg range:element, file:'plant.svg', layout: :element
  svg range:element, file:'fire.svg', layout: :se1
  svg range:element, file:'ice.svg', layout: :se2
  svg range:element, file:'undead.svg', layout: :se3
  svg range:element, file:'water.svg', layout: :we1
  svg range:element, file:'earth.svg', layout: :we2
  svg range:element, file:'spirit.svg', layout: :we3
  # Spirit ELement
  element = data.element.each_index.select { |i| data.element[i] == "Spirit"}
  svg range:element, file:'spirit.svg', layout: :element
  svg range:element, file:'plant.svg', layout: :se1
  svg range:element, file:'metal.svg', layout: :we1
  # undead ELement
  element = data.element.each_index.select { |i| data.element[i] == "Undead"}
  svg range:element, file:'undead.svg', layout: :element
  svg range:element, file:'metal.svg', layout: :se1
  svg range:element, file:'plant.svg', layout: :we1
  # Water Element
  element = data.element.each_index.select { |i| data.element[i] == "Water"}
  svg range:element, file:'water.svg', layout: :element
  svg range:element, file:'plant.svg', layout: :se1
  svg range:element, file:'lightning.svg', layout: :se2
  svg range:element, file:'beast.svg', layout: :se3
  svg range:element, file:'earth.svg', layout: :we1
  svg range:element, file:'metal.svg', layout: :we2
  svg range:element, file:'beast.svg', layout: :we3
  
  text str: data.element.map { |s| s  = "- " + s}, layout: :element_text

  

  text str: MySquibGame::VERSION, layout: :version

  build(:proofs) do
    safe_zone
    cut_zone
  end

  save format: :png, prefix: 'actions_'

  build(:pnp) do
    save_sheet prefix: 'pnp_actions_',
               trim: '0.125in',
               columns: 3, rows: 3
  end

  build(:tts) do
	save_sheet prefix: 'tts_actions_',
			   trim: 0,
	           columns: 10, rows: 7
  end

end
