class PagesController < ApplicationController
  def home
    render({:template => "pages_templates/home"})
  end

  def dice
    @quantity = params.fetch("quantity").to_i
    @sides = params.fetch("sides").to_i

    @rolls = []

    @quantity.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end

    render({:template => "pages_templates/dice"})
  end
end
