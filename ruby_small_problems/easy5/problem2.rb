require "pry-byebug"

HOUR_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = HOUR_IN_DAY * MINUTES_IN_HOUR


def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_IN_DAY
  end
  minutes % MINUTES_IN_DAY
end


def time_of_day(minutes)
  minutes_of_day = normalize_minutes_to_0_through_1439(minutes)

  # Use array destructuring to assign the values to `hours` and `minutes`
  hours, minutes = minutes_of_day.divmod(MINUTES_IN_HOUR)
  # binding.pry
  formatted_time = format("%02d:%02d", hours, minutes)
  formatted_time
end

normalize_minutes_to_0_through_1439(-3)

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
