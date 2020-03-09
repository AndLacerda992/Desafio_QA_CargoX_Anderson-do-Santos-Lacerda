class ServicesClient
  include HTTParty

  base_uri ENV["uri_api"]

  def create_book(payload)
    execute_post(self, "api/Activities", payload)
  end

  def get_book(id_book)
    execute_get(self, "api/Activities/#{id_book}")
  end

  def edit_book(payload, id_book)
    execute_put(self, "api/Activities/#{id_book}", payload)
  end

  def delete_book(payload, id_book)
    execute_delete(self, "api/Activities/#{id_book}", payload)
  end
end
