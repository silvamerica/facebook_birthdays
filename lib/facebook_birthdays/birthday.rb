module FacebookBirthdays
	class Birthday
		attr_accessor :name, :date, :uid

		def initialize(raw_event)
			@date = Date.parse(raw_event["dtstart"])
			@name = raw_event["summary"].split("'")[0]
			@uid  = raw_event["uid"].split("@")[0]
		end
	end
end