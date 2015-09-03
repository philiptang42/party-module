module PartyGoer
  attr_accessor :drink_count
  def initialize
    @drink_count = 0
  end

  def drink
    @drink_count += 1
    if @drink_count < 3
      true
    else
      false
    end
  end

  def sing
    "lala"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  module Invited

    def invited?
      true
    end
  end
end

class Launcher

  include PartyGoer
  extend Invited
end


class PersonalizedHavocError < StandardError
end
