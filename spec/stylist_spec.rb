require('spec_helper')

describe('Stylist') do
  describe('#initialize') do
    it('is initialized with a name') do
      stylist = Stylist.new(name: 'Brad Pitt', id: nil)
      expect(stylist).to(be_an_instance_of(Stylist))
    end
  end
end
