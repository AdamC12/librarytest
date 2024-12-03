# frozen_string_literal: true

class Member
  attr_reader :name

  def initialize(name, member_number)
    @name = name
    @member_number = member_number
  end

end
