class FontMaker
  def initialize
    @font_list = ["3-d", "3x5", "5lineoblique", "acrobatic", "alligator", "alligator2", "alphabet", "avatar", "banner3-D", "banner4", "barbwire", "basic", "big", "binary", "block", "bubble", "bulbhead", "calgphy2", "caligraphy", "catwalk", "chunky", "coinstak", "colossal", "computer", "contessa", "contrast", "cosmic", "cosmike", "cricket", "cursive", "cyberlarge", "cybermedium", "cybersmall", "diamond", "digital", "doh", "doom", "dotmatrix", "drpepper", "eftifont", "eftipiti", "eftirobot", "eftitalic", "eftiwall", "eftiwater", "epic", "fender", "fourtops", "goofy", "gothic", "graffiti", "hollywood", "invita", "isometric1", "isometric2", "isometric3", "isometric4", "italic", "ivrit", "jazmine", "jerusalem", "katakana", "kban", "larry3d", "lcd", "lean", "letters", "linux", "lockergnome", "madrid", "marquee", "mike", "mini", "mirror", "mnemonic", "morse", "moscow", "nancyj-underlined", "nancyj", "nipples", "ntgreek", "o8", "ogre", "pawp", "pebbles", "pepper", "poison", "puffy", "rectangles", "relief", "relief2", "roman", "rot13", "rounded", "rowancap", "rozzo", "runic", "runyc", "sblood", "script", "serifcap", "shadow", "short", "slant", "slide", "slscript", "small", "smisome1", "smkeyboard", "smscript", "smshadow", "smslant", "smtengwar", "speed", "stampatello", "standard", "starwars", "stellar", "stop", "straight", "tanja", "tengwar", "term", "thick", "thin", "threepoint", "ticks", "ticksslant", "tinker-toy", "tombstone", "trek", "tsalagi", "twopoint", "univers", "usaflag", "weird"]
  end

  def list_fonts
    @font_list.map { |font|
      "<option value=\"#{font}\">#{font}</option>" }.join("\n\t")
  end
end

class RecentUsers
  attr_accessor :store
  def initialize
    @store = YAML::Store.new("users.yml")
  end

  def add_item(item)
    @store.transaction do
      @store.push(item)
    end
  end

  def display_all
    list = @store.transaction.map
  end
end






