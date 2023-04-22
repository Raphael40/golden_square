require 'time_error'

RSpec.describe TimeError do
  it 'returns the difference between the remote clock and the local clock' do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI(
      "https://worldtimeapi.org/api/ip")
    ).and_return('{ "abbreviation":"BST","client_ip":"2a01:4b00:c00b:9f00:a2ed:61f6:1705:6cdd","datetime":"2023-04-22T13:21:23.974684+01:00","day_of_week":6,"day_of_year":112,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1682166083,"utc_datetime":"2023-04-22T12:21:23.974684+00:00","utc_offset":"+01:00","week_number":16 }')
    time = Time.new(2023, 4, 22, 13, 21, 23)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 0.974684
  end
end