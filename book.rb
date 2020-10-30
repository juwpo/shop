class Book < Shop

  attr_reader :book, :genre, :author

  def initialize(params)
    super
    @book = params[:book]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    super
    "Книга - #{@book},жанр - #{@genre}#,автор - #{@author}, #{super}"
  end

end