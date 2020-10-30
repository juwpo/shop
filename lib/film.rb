class Film < Shop

  attr_reader :film, :director, :year

  def initialize(params)
    super
    @film = params[:film]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    super
    "#{@film}, реж - #{@director}, выпуск #{@year} год ,#{super}"
  end

end