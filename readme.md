#Drupal Boilerplate#
-

(Total) Drupal boilerplate is not a module. Instead it just serves as a directory structure for
starting a new drupal site. The idea behind Drupal boilerplate came from working on so many
different sites which each follow their own development practice, directory structure,
deployment guidelines, etc...

Drupal boilerplate tries to simplify starting a new site by having the most common
directory structures and files already included and set up.

The main differences between this boilerplate and the lullabot one is that it is make to be 
used with drush make and jenkins. So, the project.make file should be placed in the root dir.

Running makeit.sh will clean and reassemble the site in the src directory but only the custom
code (modules/themes/libraries) should be included in the src folder.

When branches are pushed upstream, jenkins will use the make file to create the drupal site in the docroot
directory (which can then be deployed to the server by jenkins using ssh/scp).

##Getting started##
You can start by [downloading](https://github.com/TotalActiveMedia/drupal-boilerplate/zipball/master)
this project. Once you download it you will find that every folder contains a readme.md file.
This readme.md file has been extensively documented to explain what belongs
in that specific directory.

Here's a breakdown for what each directory/file is used for. If you want to know more please
read the readme inside the specific directory.

* [docroot](https://github.com/TotalActiveMedia/drupal-boilerplate/tree/master/docroot)
 * This is where the site will be created in Jenkins.
* [drush](https://github.com/TotalActiveMedia/drupal-boilerplate/tree/master/drush)
 * Contains project specific drush commands, aliases, and configurations.
* [results](https://github.com/TotalActiveMedia/drupal-boilerplate/tree/master/results)
 * This directory is just used to export test results to. A good example of this
   is when running drush test-run with the --xml option. You can export the xml
   to this directory for parsing by external tools.
* [scripts](https://github.com/TotalaActiveMedia/drupal-boilerplate/tree/master/scripts)
 * A directory for project-specific scripts.
* [src](https://github.com/TotalaActiveMedia/src)
 * This is where your custom drupal code goes (create a sites/ folder and place it there)
* [test](https://github.com/TotalActiveMedia/drupal-boilerplate/tree/master/test)
 * A directory for external tests. This is great for non drupal specific tests
 such as selenium, qunit, casperjs.
* [.gitignore](https://github.com/TotalaActiveMedia/drupal-boilerplate/blob/master/.gitignore)
 * Contains the a list of the most common excluded files.

Built by Robots&trade, updated by humans;
