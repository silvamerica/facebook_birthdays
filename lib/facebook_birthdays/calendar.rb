require 'net/http'
require 'selene'

module FacebookBirthdays
	class Calendar
		attr_reader :birthdays

		def initialize(url)
			@birthdays = []
			raw_ical_response = Net::HTTP.get('www.facebook.com', url)
			parsed_calendar = Selene.parse(raw_ical_response)
			calendar_events = parsed_calendar["vcalendar"].first["vevent"]
			calendar_events.each do |event|
				@birthdays << Birthday.new(event)
			end
		end

		def birthdays_for(date)
			@birthdays.select{|birthday|birthday.date === date}
		end
	end
end