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

  describe('#id') do
    it('sets its ID when you save it') do
      stylist = Stylist.new(name: 'mama nani', id: nil)
      stylist.save
      expect(stylist.id).to(be_an_instance_of(Fixnum))
    end
  end

  describe('.all') do
    it('starts off with no stylists') do
      expect(Stylist.all).to(eq([]))
    end
  end

  describe('#save') do
    it('lets you save stylists to the database') do
      stylist = Stylist.new(name: 'mama nani', id: nil)
      stylist.save
      expect(Stylist.all).to(eq([stylist]))
    end
  end

  describe('#==') do
    it('is the same stylist if it has the same name') do
      stylist1 = Stylist.new(name: 'moringaschool stuff', id: nil)
      stylist2 = Stylist.new(name: 'moringaschool stuff', id: nil)
      expect(stylist1).to(eq(stylist2))
    end
  end

  describe('#update') do
    it('lets you update stylists in the database') do
      stlist = Stylist.new(name: 'mama nani', id: nil)
      stlist.save
      stlist.update(name: 'mama nana')
      expect(stlist.name).to(eq('mama nana'))
    end
  end
end
