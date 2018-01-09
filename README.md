# php-laravel-notetracker

![Screen shot](https://github.com/185SE14THST/php-laravel-notetracker/raw/master/demo.jpg "Sample #1")

This repo contains the samples that demonstrate 'creating, editing and deleting' simple notes. With further development the sample may show:
* Integration with live 3rd party grammar services via REST API.
* A simple profile section for user preferences.
* Responsive design, 'no-blink' pages and mobile friendly.

> **Note:** If you are unfamiliar with Git and GitHub, you can download the entire collection as a 
> [ZIP file](../../archive/master.zip), but be 
> sure to unzip everything to access shared dependencies. 

## Using the sample


The easiest way to use these samples without using Git is to download the zip file containing the current version (using the following link or by clicking the "Download ZIP" button on the repo page). You can then unzip the entire archive and use the samples in a PHP editor.

   [Download the samples ZIP](../../archive/master.zip)

   **Deploy to local development environment:** 
   1. Unzip the files to the folder you will be serviing your web files from. (LAMP with composer is recommended)
```
cd /var/www/html
unzip master.zip
```
   2. Import the demo.sql (included in this repo)  file to your MySQL database
```
mysql -u <username> -p<PlainPassword> <databasename> < <filename.sql>
```
> **Note:** modify your .env file for more specific database requirements. 

   3. Run a 'composer install' to include dependencies at the root of the project folder.
```
cd path/to/project/folder
composer install
```
   4. Create a local host record for notes.demo.dev (hosts file)
```
127.0.0.1   notes.demo.dev
```
   5. Modify the site directive with the following followed by an apache2 service restart. Use the appropriate folder paths based on where you unzipped the downloaded zip file.
```
DocumentRoot /var/www/html/notes.demo.dev/public
ServerName notes.demo.dev

<Directory "/var/www/html/notes.demo.dev/public">
allow from all
AllowOverride All
Options None
Require all granted
</Directory>
```
   6. Open your web browser and navigate to notes.demo.dev.
   7. Register and sign in to add a note.
   
> **Note:** This project has been tested using Mozilla Firefox. 

[Get a free copy of Visual Studio Code with support for building Laravel apps](https://code.visualstudio.com/download)

## Open source tool kit
The following technologies were used to develope this sample:
* [Microsoft Azure](https://azure.microsoft.com/en-us/)
* [CentOS 7 x86_64 minimal](https://www.centos.org/)
* [Visual Studio Code version 1.11](https://code.visualstudio.com/)
* [Laravel 5.5](https://laravel.com/docs/5.5/releases)
* [Apache2](http://httpd.apache.org/)
* [Syntevo SmartGit 17.0.3](http://www.syntevo.com/smartgit/)
* [Oracle VirtualBox 5.1](https://www.virtualbox.org/)


## License

 All rights reserved.

Licensed under the [MIT](LICENSE.txt) License.

## Demonstration Notes
> This sample was prepared for the purposes of a single function demonstration or proof-of-concept. It is not intened to be used for production or commercial use. Content including pictures and HTML content is not intended to reflect any actual product or certain persons property (intellectual or otherwise).
