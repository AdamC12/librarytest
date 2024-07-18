# frozen_string_literal: true

class Book

  attr_reader :author, :title
  attr_accessor :status

  def initialize(author, title)
    @author = author
    @title = title
    @status = "available"
  end

end
