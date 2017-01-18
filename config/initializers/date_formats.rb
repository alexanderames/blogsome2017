Date::DATE_FORMATS[:short]    = Proc.new { |date| date.stamp("Sun Jan 5") }
Time::DATE_FORMATS[:military] = Proc.new { |time| time.stamp("5 January 23:59") }