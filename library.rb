# frozen_string_literal: true

class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

end

# irb -r ./library.rb