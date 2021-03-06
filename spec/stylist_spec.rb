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

  describe('#delete') do
    it('lets you delete a stylist from the database') do
      stylist = Stylist.new(name: 'mama nani', id: nil)
      stylist.save
      stylist2 = Stylist.new(name: 'mama nana', id: nil)
      stylist2.save
      stylist.delete
      expect(Stylist.all).to(eq([stylist2]))
    end

    it("deletes a stylist's clients from the database") do
      stylist = Stylist.new(name: 'mama nani', id: nil)
      stylist.save
      client = Client.new(name: 'Latasha', stylist_id: stylist.id)
      client.save
      client2 = Client.new(name: 'Moses', stylist_id: stylist.id)
      client2.save
      stylist.delete
      expect(Client.all).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a stylist by its ID') do
      test_stylist = Stylist.new(name: 'mama nani', id: nil)
      test_stylist.save
      test_stylist2 = Stylist.new(name: 'mama nana', id: nil)
      test_stylist2.save
      expect(Stylist.find(test_stylist2.id)).to(eq(test_stylist2))
    end
  end

  describe('#clients') do
    it('returns an array of clients for that stylist') do
      test_stylist = Stylist.new(name: 'mama nani', id: nil)
      test_stylist.save
      test_client = Client.new(name: 'Latasha', stylist_id: test_stylist.id, id: nil)
      test_client.save
      test_client2 = Client.new(name: 'Natasha', stylist_id: test_stylist.id, id: nil)
      test_client2.save
      expect(test_stylist.clients).to(eq([test_client, test_client2]))
    end
  end
end
