require "rails_helper"

RSpec.describe Visit, :type => :model do
	it 'Should not allow to create empty visitors' do
		@visit = Visit.new(:name => '')
		expect(@visit).not_to be_valid	
	end
	it 'Should not allow to create names with 1 char' do
		@name = 'a'
		@visit = Visit.new(:name => @name)
		expect(@visit).not_to be_valid	
	end
	it 'Should not allow to create visitors with names longer than 20 chars' do
		@name = 'a' * 21
		@visit = Visit.new(:name => @name)
		expect(@visit).not_to be_valid	
	end
	it 'should allow to create a visit with a name with no more than 20 chars' do
		@name = 'a' * 14
		@visit = Visit.new(:name => @name)
		expect(@visit).to be_valid	
	end
end
