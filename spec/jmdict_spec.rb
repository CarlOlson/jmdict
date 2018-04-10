
RSpec.describe JMdict do
  it 'has a version number' do
    expect(JMdict::VERSION).not_to be nil
  end

  it 'should have a UTF-8 database' do
    expect(JMdict.db.encoding).to eql 'UTF-8'
  end

  it 'should not have newlines' do
    expect(JMdict.db.at_css('entry k_ele').text).to_not match /\n/
  end
end
