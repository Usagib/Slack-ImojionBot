require 'vcr'

VCR.config do |c|
  c.allow_http_connections_when_no_cassette = true
  c.cassette_library_dir = 'vcr_cassettes'
  c.stub_with :webmock
  c.default_cassette_options = { key: 'once' }
end
