require './etl/common/sightings'

start_date = YearMonth.new(1969, 1)
end_date = YearMonth.new(1993, 9)

sightings = BigfootSightings.new(start_date, end_date)
sightings.load
sightings.save 'cleaned/bigfoot_sightings_pre_xfiles.csv'
