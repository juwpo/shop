class Book < Shop
  def initialize(params)
    super
    @name = params[:name],
    @genre = params[:genre],
        @author = params[:author],
        @year = params[:year]
  end
end