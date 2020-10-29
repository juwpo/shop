
class Shop

  attr_reader :amount , :price , :name, :genre, :director, :year

  def initialize(params)
    @amount = params[:amount]
    @price = params[:price]
  end

end