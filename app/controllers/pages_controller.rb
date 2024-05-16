class PagesController < ApplicationController
  def home
    render({:template => "pages_templates/home"})
  end

  def dice
    @quantity = params.fetch("quantity")
    @sides = params.fetch("sides")

    @rolls = []

    @number_of_dice.times do
      die = rand(1..@number_of_sides)
      @rolls.push(die)
    end

    render({:template => "pages_templates/dice"})
  end
