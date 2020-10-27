
class Shop

  attr_reader :amount , :price

  def initialize(params)
    @amount = params[:amount]
    @price = params[:price]
  end

end