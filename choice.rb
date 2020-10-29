if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
require_relative 'shop.rb'
require_relative 'film.rb'
require_relative 'book.rb'


film = Film.new(name: "Халк",genre: "Фантастика" ,year: "выпуск 2003 год",director:"Энг Ли",price:"2600 р.",amount:"10 Осталось")
book = Book.new(price: 1500,amount: 1)

puts "Товары которые имеются в наличии:"

puts film.to_s

puts "#{film.name.to_s} #{film.genre} #{film.year} #{film.director} #{film.price} #{film.amount}"
