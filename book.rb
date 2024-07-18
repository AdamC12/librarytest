# frozen_string_literal: true

class Book

  attr_reader :author, :titles

  def initialize(author, title)
    @author = author
    @title = title
  end

end
