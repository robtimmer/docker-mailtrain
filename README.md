![](http://mailtrain.org/mailtrain.png)
# Docker Mailtrain
This is a Docker for [Mailtrain](http://mailtrain.org): a self hosted newsletter application. For more info, see [the github project](https://github.com/andris9/mailtrain)

## Installation
  1. Create a directory on your machine (e.g. `mailtrain`). This will be used for storing the source codes, logs and configs.
  2. Setup an empty MySQL database (v5.5+ or MariaDB)
  3. Create an directory called `config` inside the directory from step 1
  4. Create an configuration file called `production.toml` inside the directory from step 3
  5. Edit and set your own configuration/ parameters in the config file. Example can be found [here](https://github.com/andris9/mailtrain/blob/master/config/default.toml)
  6. Run the Docker command with your directory as parameter: `docker run -v /path/to/your/directory/:/opt/mailtrain -p 3000:3000 robtimmer/mailtrain`
  7. Wait for it to clone the source code from github and initialize the database
  8. Enjoy Mailtrain on `http://your_ip:3000`. Default credentials are `admin`:`test`