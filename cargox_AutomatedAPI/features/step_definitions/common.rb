def prepare_request(payload, type = nil)
  if type == nil
    { body: payload == nil ? nil : payload.to_json, headers: { "Content-Type" => "application/json" } }
  else
    { body: payload == nil ? nil : payload.to_json, headers: { "Content-Type" => "application/json", "type" => "#{type}" } }
  end
end

def prepare_request_put(payload)
  { query: payload, headers: { "Content-Type" => "application/json" } }
end

# Protocolos HTTP
def execute_post(http_party, url, payload, type = nil)
  http_party.class.post(url, prepare_request(payload, type))
end

def execute_get(http_party, url)
  http_party.class.get(URI.parse(URI.encode(url)), prepare_request(nil))
end

def execute_put(http_party, url, payload)
  http_party.class.put(url, prepare_request_put(payload))
end

def execute_delete(http_party, url, payload)
  http_party.class.delete(url, prepare_request(payload))
end