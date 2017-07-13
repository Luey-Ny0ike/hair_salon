class Client
  attr_reader(:name, :id)
  define_method(:initialize) do |attributes|
    @name = attributes.fetch('name')
    @id = attributes.fetch('id')
  end

  define_singleton_method(:all) do
    returned_clients = DB.exec('SELECT * FROM clients;')
    clients = []
    returned_clients.each do |client|
      name = client.fetch('name')
      client_id = client.fetch('client_id').to_i
      clients.push(Client.new(name: name, client_id: client_id))
    end
    clients
  end
end
