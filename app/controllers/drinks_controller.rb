class DrinksController < ApplicationController
  def show
    @drink = Drink.find(params[:id])
  end
  
  # ✨ この部分を追加！
  def random
    temperature = params[:temperature] # "ice" または "hot"
    
    if temperature == "ice"
      @drinks = Drink.where("category LIKE ?", "%アイス%")
    elsif temperature == "hot"  
      @drinks = Drink.where("category LIKE ?", "%ホット%")
    else
      @drinks = Drink.all # 念のため全部
    end
    
    # ランダムに1つ選択
    @selected_drink = @drinks.sample
    @temperature_type = temperature
    
    puts "✅ #{temperature}から#{@selected_drink&.name}を選択しました"
  end
end