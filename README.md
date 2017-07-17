## Ruby on Rails and Elasticsearch persistence: Example application

### Building

```
rails new music --force --skip --skip-bundle --skip-active-record --template https://raw.githubusercontent.com/vitor-caetano/music-elasticsearch/master/music.template.rb
```

### Running
```
ELASTICSEARCH_URL=http://localhost:9200 rails server --port=3000
```

### Query with suggest

```
curl -XGET http://0.0.0.0:3000/suggest?term=er | python -m json.tool
```

### Import / Indexing

```
rails c
IndexManager.import_from_yaml('https://github.com/elastic/elasticsearch-rails/releases/download/dischord.yml/dischord.yml', force: true)
```