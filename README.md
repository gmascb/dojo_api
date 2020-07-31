# README

### Instaling with docker and compose
  * [Installing docker](https://docs.docker.com/engine/install/ubuntu/)
  * After docker is installed run
    * docker-compose up --build
      * now your service is built and running.
    * to create the databases in postgresql image run
      * docker exec -it dojo_api_web_1 sh
      * $ rake db:create
      * Remember that every-time you make a new migration for the databases
        * usefull commands:
          * rake db:drop
          * rake db:create
          * rake db:migrate
          * rake db:seed
  * To Run with RubyMine - Needs RAILS 6
    * [Link how-tow](https://www.youtube.com/watch?v=BHniRaZ0_JE)
    * Remember to remove pid files
      * ```sudo rm -r tmp/pids/```
    * ctl+alt+s and configure your remote Ruby
      * Language & Frameworks
      * Add New Remote > docker-compose
      * Choose your docker image - normally ```web```
    * configure your docker-compose.yml
    ```
    ports:
    - "3000:3000"
    # Ports required for debugging
    - "1234:1234"
    - "26166:26168"
    ```
    * add gems to gem file
    ```
    gem 'debase'
    gem 'ruby-debug-ide'
    ```
    * To resolve docker.sock & docker.pid
    ```
    sudo chmod a+rwx /var/run/docker.sock  && sudo chmod a+rwx /var/run/docker.pid
    ```