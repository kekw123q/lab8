#frozen_string_literal: trued
class CalculationsController < ApplicationController
  def input
    # Здесь может быть код для обработки ввода данных
  end
  def split_number(num)
    num.to_s.chars.map(&:to_i)
  end
  def result
    am_num = params[:v1].to_i
    approved_nums = []
    for i in (1..10**am_num)
      a = split_number(i)
      a_sum = 0
      a.each do |elem|
        a_sum += elem.to_i**am_num
      end
      if i == a_sum and a.length == am_num
        approved_nums << i
      end
    end
    @result = approved_nums
  end
end
