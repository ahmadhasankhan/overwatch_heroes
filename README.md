Overwatch Heroes
===========================

Prerequisite.

  - Ruby ~> 2.2.x
  - Rails ~> 5.1.x
  - MySQL ~> 5.x.x

* copy and rename example.database.yml file to database.yml

##### Follow along:
```
$ gem install bundler
$ bundle install
$ rake db:create
$ rake db:migrate
$ rails s 


// If you want to run on some specific port then apend -p {portnumber} 
```

Default port will be '3000'
You may access the application at:

http://localhost:3000

### Import Data
$ rake import:heros
$ rake import:abilities
