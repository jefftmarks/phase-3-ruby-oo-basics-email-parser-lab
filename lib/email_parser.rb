# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
	attr_reader :emails

	def initialize(emails)
		@emails = emails
	end

	def parse
		if @emails.match(/, /)
			@emails.split(", ").join(" ").split(" ").uniq
		elsif @emails.match(/\w\s\w/)
			@emails.split(" ").uniq
		end
	end
end
