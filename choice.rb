if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
require_relative 'lib/shop.rb'
require_relative 'lib/film.rb'
require_relative 'lib/book.rb'

product = []
product << Film.new(film:'Халк' ,year: 2003,director:'Энг Ли',price: 2600,amount: 10)
product << Film.new(film: 'Гарри Потер : Полукровка' ,year: 2009,director:'Дэвид Йетс',price: 3200,amount: 3)
product << Film.new(film: 'Куда приводят мечты' ,year: 'выпуск 1998 год',director:'Винсент Уорд',price: 4620,amount: 1)
product << Book.new(book:'Хоббит', genre:'Приключения/Фантастика',author: 'Джон Толкин', price:459, amount:1 )

puts "Товары которые имеются в наличии:"
puts ""


product.each { |products| puts products }

