# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    output = []
    split_string = @emails.split(%r/[ ,]/)
    split_string.each do |element|
      if element.empty? == false
        if output.include?(element) == false
          output << element
        end
      end
    end
    output
  end

end
