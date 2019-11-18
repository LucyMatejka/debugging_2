# coding: utf-8

require 'delegate'

# Understands how to present a random, happy emoji
class RandomHappyEmoji < SimpleDelegator
    HAPPY_EMOJI = [":)", ":D"]
    #changed above line to include smiley emoji in the array

  def initialize
    super(HAPPY_EMOJI.sample)
  end
end
