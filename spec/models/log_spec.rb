require 'rails_helper'

RSpec.describe Log, type: :model do
    describe '.new' do
        it 'creates a log instance' do
            l = Log.new
            expect(l.attributes.count).to eql(10)
        end
    end
end
