require 'tilt'
require 'flavour_saver'

describe 'Fixture: if_else.hbs' do
  let(:template) { File.expand_path('../../fixtures/if_else.hbs', __FILE__) }

  it 'renders correctly when given a name' do
    context = Struct.new(:name).new('Alan')
    Tilt.new(template).render(context).strip.should == "Say hello to Alan."
  end

  it 'renders correcrtly when not given a name' do
    context = Struct.new(:name).new
    Tilt.new(template).render(context).strip.should == "Nobody to say hi to."
  end
end
