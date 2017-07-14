require('spec_helper')

describe('#initialize') do
  it('is initialized with a name') do
    client = Client.new(name: 'Brad Pitt', id: nil)
    expect(client).to(be_an_instance_of(Client))
  end
end

describe('Client') do
  describe('.all') do
    xit('starts off with no clients') do
      expect(Client.all).to(eq([]))
    end
  end

  describe('#save') do
    xit('adds a client to the array of saved clients') do
      test_client = Client.new(name: 'Mama nani', client_id: nil)
      test_client.save
      expect(Client.all).to(eq([test_client]))
    end
  end

  describe('#==') do
    xit('is the same client if he/she has the same name and id') do
      client = Client.new(name: 'Latasha', id: nil)
      client2 = Client.new(name: 'Latasha', id: nil)
      expect(client).to(eq(client2))
    end
  end
end
