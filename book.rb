# frozen_string_literal: true

class Book

  attr_reader :author, :title
  attr_accessor :status, :member_id

  def initialize(author, title)
    @author = author
    @title = title
    @status = "available"
    @member_id = nil
  end

end
