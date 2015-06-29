# anynines rails_elasticsearch_example
*anynines rails_elasticsearch_example* is a small web app that shows how to use Elasticsearch with Rails on anynines. Here we use the gem [tire](https://github.com/karmi/retire) as client for the Elasticsearch search engine/database.

## Supported Database Services
- MySQL

## Additional Required Services
- Elasticsearch

## Requirements
- Ruby 2.2.2
- Bundler (`gem install bundler`)
- Rails 4.2

## Getting Started
### Create services in Cloud Foundry
Start by creating the services required by *anynines rails_elasticsearch_example*:

Create a new mysql service  and a new Elasticsearch service(you can see the available service plans by typing `cf m[arketplace]`):
```SHELL
cf create-service mysql <SERVICE PLAN> <MYSQL SERVICE NAME>
cf create-service elasticsearch <SERVICE PLAN> <ES SERVICE NAME>
```

### Checkout repository and bundle gems
Checkout this repository:
```SHELL
git clone https://github.com/anynines/rails_elasticsearch_example
cd rails_elasticsearch_example
```
Bundle the gems:
```SHELL
bundle install
```

### Adapt manifest file
Adapt the manifest file to suit your installation:

*manifest.yml*
```YAML
---
applications:
- name: <APPLICATION NAME>
  memory: 256M
  instances: 1
  buildpack: https://github.com/cloudfoundry/ruby-buildpack.git
  host: <HOST NAME>
  domain: de.a9sapp.eu
  path: .
  services:
  - <MYSQL SERVICE NAME>
  - <ES SERVICE NAME>
```

### Push anynines rails_elasticsearch_example to Cloud Foundry
```SHELL
cf push -f manifest.yml
```

### Access web interface
Run `cf apps` to see all apps. You can find the URL of the web interface for *anynines rails_elasticsearch_example* in the `urls` column of your app.

Open the displayed URL in a browser and you can try out Elasticsearch on anynines.
