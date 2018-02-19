class GamesController < ApplicationController
  require 'open-uri'
  require 'json'

  def new
    @letters = []
    @grid = ""
    @alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  end

  def score
  end

end
