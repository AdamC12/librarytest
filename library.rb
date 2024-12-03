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

  def borrow_book(author, title, member_id)
    @books.each do |book|
      next unless book.author == author && book.title == title

      book.status = 'borrowed'
      book.member_id = member_id
      puts "#{title} by #{author} has been borrowed"
      break
    end
  end

  def return_book(author, title)
    @books.each do |book|
      next unless book.author == author && book.title == title && book.status == 'borrowed'

      book.status = 'available'
      book.member_id = nil
      puts "#{title} by #{author} has been returned"
      break
    end
  end

  def available_books
    available_books = @books.select { |book| book.status == 'available' }
    puts "The following books are available for borrowing: \n"
    available_books.each do |book|
      puts "#{book.title} by #{book.author}"
    end
  end

  def borrowed_books
    borrowed_books = @books.select { |book| book.status == 'borrowed' }
    puts "The following books are already borrowed: \n"
    borrowed_books.each do |book|
      puts "#{book.title} by #{book.author}, borrowed by: #{book.member_id}"
    end
  end

  def borrowed_books_by_member(member_id)
    member_books = @books.select { |book| book.status == 'borrowed' }
    puts "member #{member_id} has borrowed:"
    member_books.each do |book|
      puts "#{book.title} by #{book.author}"
    end
  end

end

# irb -r ./library.rb