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


film = Film.new(price: 2000,amount: 4)
book = Book.new(price: 1500,amount: 1)


puts "Фильм Халк #{film.price} руб."
puts "И количество #{film.amount}"
puts ""
puts "Книга Хоббит #{book.price} руб."
puts "Книга Хоббит количество #{book.amount}"