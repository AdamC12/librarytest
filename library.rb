# frozen_string_literal: true

class Library
  attr_reader :books

  def initialize
    @books = []
  end

end

# irb -r ./library.rb