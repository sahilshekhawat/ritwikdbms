== README

Ensure that you have rails installed
```
rails -v
```

Go to **config/database.yml** file and change the password field with you MySQL's password and databases name with your database that you sent me.<br>

Now in project Directory, run
```
bundle install
rake db:migrate
rails server
```

**NOTE:** if you go error while installing mysql2, then run
```
sudo apt-get install nodejs
sudo apt-get install libmysqlclient-dev
``
If you are on OSX then run
```
brew install mysql
```

If everything happens perfectly then go to:
http://localhost:3000/admin

:)