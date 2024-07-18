# frozen_string_literal: true

class Book

  attr_reader :author, :titles

  def initialize(author, title)
    @author = author
    @titles = [title]
  end
  def self.add_book_to_author(author, title, books)
    books.each do |book|
      book.titles << title if book.author == author
    end
    books
  end

end
