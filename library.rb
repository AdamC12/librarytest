# frozen_string_literal: true
require './book.rb'
require './member.rb'
require 'pry'

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

  def borrow_book(author, title)
    @books.each do |book|
      next unless book.author == author

      if book.titles.find { |book_title| book_title == title }
        book.titles.delete(title)
        puts "#{title} by #{author} has been borrowed"
      else
        puts "#{title} by #{author} is not available for borrowing!"
      end
    end
  end

end

# irb -r ./library.rb