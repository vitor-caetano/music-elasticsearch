class Artist
  include Elasticsearch::Persistence::Model

  attribute :name, String
end
