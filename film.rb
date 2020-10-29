class Film < Shop
  def initialize(params)
    super
    @name = params[:name],
        @genre = params[:genre],
        @director = params[:director],
        @year = params[:year]
  end
end