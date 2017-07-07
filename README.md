# Ruby on Rails and Elasticsearch persistence: Example application

### Building

```
rails new music --force --skip --skip-bundle --skip-active-record --template https://raw.githubusercontent.com/vitor-caetano/music-elasticsearch/master/music.template.rb
```

### Query with suggest

```
curl -XGET http://0.0.0.0:3000/suggest?term=er | python -m json.tool
```
