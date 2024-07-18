# frozen_string_literal: true
require './book.rb'
require './member.rb'

class Library
  attr_reader :books, :members

  def initialize
    @books = []
    @members = []
  end

  def register_member(member_name)
    member = Member.new(member_name)
    @members << member
  end

  def add_book(author, title)
    if @books.find { |book| book.author == author }
      @books = Book.add_book_to_author(author, title, @books)
    else
      book = Book.new(author, title)
      @books << book
    end
    @books
  end

end

# irb -r ./library.rb