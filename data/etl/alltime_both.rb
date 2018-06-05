require './etl/common/sightings'

start_date = YearMonth.new(1969, 1)
end_date = YearMonth.new(2017, 8)

sightings = AllSightings.new(start_date, end_date)
sightings.load
sightings.save 'cleaned/both_sightings_alltime.csv'