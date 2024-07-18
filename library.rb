# frozen_string_literal: true
require './book.rb'
require './member.rb'
require 'pry'

class Library
  attr_reader :books, :members

  def initialize
    @books = []
    @members = []
    @member_number = 0
  end

  def register_member(member_name)
    member = Member.new(member_name, @member_number += 1)
    @members << member
  end

  def add_book(author, title)
    book = Book.new(author, title)
    @books << book
  end

  def borrow_book(author, title)
    @books.each do |book|
      next unless book.author == author && book.title == title
    
    end
  end

  def return_book(author, title)
    add_book(author, title)
    puts "#{title} by #{author} has been returned"
  end

end

# irb -r ./library.rb