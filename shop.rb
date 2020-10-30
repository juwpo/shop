
class Shop

  attr_reader :amount , :price

  def initialize(params)
    @amount = params[:amount]
    @price = params[:price]
  end

  def to_s
    "(осталось #{@amount}),цена #{@price} рублей"
 end
end