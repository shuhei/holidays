# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/ca.yaml, data/north_america_informal.yaml
class CaDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_ca
{Date.civil(2008,1,1) => 'New Year\'s Day',
 Date.civil(2008,3,21) => 'Good Friday',
 Date.civil(2008,3,24) => 'Easter Monday',
 Date.civil(2008,5,19) => 'Victoria Day',
 Date.civil(2008,7,1) => 'Canada Day',
 Date.civil(2008,9,1) => 'Labour Day',
 Date.civil(2008,10,13) => 'Thanksgiving',
 Date.civil(2008,11,11) => 'Remembrance Day',
 Date.civil(2008,12,25) => 'Christmas Day',
 Date.civil(2008,12,26) => 'Boxing Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ca, :informal)[0] || {})[:name]
end

# Family Day in BC
[ Date.civil(2013,2,11), Date.civil(2014,2,10) ].each do |date|
  assert_equal 'BC Family Day', Holidays.on(date, :ca_bc)[0][:name]
end

# Victoria Day
[Date.civil(2004,5,24), Date.civil(2005,5,23), Date.civil(2006,5,22),
 Date.civil(2007,5,21), Date.civil(2008,5,19)].each do |date|
  assert_equal 'Victoria Day', Holidays.on(date, :ca)[0][:name]
end


{Date.civil(2013,2,2) => 'Groundhog Day',
 Date.civil(2013,2,14) => 'Valentine\'s Day',
 Date.civil(2013,3,17) => 'St. Patrick\'s Day',
 Date.civil(2013,4,1) => 'April Fool\'s Day',
 Date.civil(2013,4,22) => 'Earth Day',
 Date.civil(2013,5,12) => 'Mother\'s Day',
 Date.civil(2013,5,18) => 'Armed Forces Day',
 Date.civil(2013,6,16) => 'Father\'s Day',
 Date.civil(2013,10,31) => 'Halloween'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :us, :informal)[0] || {})[:name]
end

  end
end
