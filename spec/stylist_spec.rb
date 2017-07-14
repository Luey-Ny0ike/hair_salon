require('spec_helper')

describe('Stylist') do
  describe('#initialize') do
    it('is initialized with a name') do
      stylist = Stylist.new(name: 'Brad Pitt', id: nil)
      expect(stylist).to(be_an_instance_of(Stylist))
    end
  end

  describe('#name') do
    it('tells you its name') do
      stylist = Stylist.new(name: 'mama nani', id: nil)
      expect(stylist.name).to(eq('mama nani'))
    end
  end
end
