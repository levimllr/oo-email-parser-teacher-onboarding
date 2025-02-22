require "pry"

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_string
  @@all = []

  def self.all
    @@all
  end

  def initialize(email_string)
    @email_string = email_string
  end

  def parse
    split_email_string = @email_string.split(/, | |,/)
    split_email_string.uniq
  end

end