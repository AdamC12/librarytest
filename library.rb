# frozen_string_literal: true
require './book.rb'

class Library
  attr_reader :books

  def initialize
    @books = []
    @members = []
  end

  def register_member(member)
    @members << member
  end

  def add_book(author, title)
    book = Book.new(author, title)
    @books << book
  end

end

# irb -r ./library.rb