require 'spec_helper'

describe 'search' do

	it 'returns an array of all ruby files in app/models' do
		search = Search.new
		expect(search.return_files("*/test_models/*.rb")).to eq ["spec/test_models/bacon.rb", "spec/test_models/piggy.rb"]
	end

	it 'returns an array of all ruby files containing "has_many" keyword' do 
		search = Search.new
		expect(search.return_has_many("*/test_models/*.rb")).to eq ["spec/test_models/piggy.rb"]
	end

end