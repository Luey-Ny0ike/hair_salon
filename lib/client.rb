class Client
  attr_reader(:name, :stylist_id)
  define_method(:initialize)do |attributes|
    @name = attributes.fetch(:name)
    @stylist_id = attributes.fetch(:stylist_id)
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

  define_method(:save) do
    DB.exec("INSERT INTO clients (name, client_id) VALUES ('#{@name}', #{@client_id});")
  end

  define_method(:==) do |another_client|
    name.==(another_client.name).&(client_id.==(another_client.client_id))
  end
end
