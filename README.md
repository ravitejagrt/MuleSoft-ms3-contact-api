# ms3-contact-api mule application 

* The APIs exposed from this application are consumed by ms3-web-app

* Inorder to run this app we need to have either mule standalone runtime or Anypoint Studio

* Mule runtime or Anypoint studio can be downloaded from here : https://www.mulesoft.com/lp/dl/studio/previous

* Clone the project from Git using the link: https://github.com/ravitejagrt/ms3-contact-api.git

* Using the sql script in the resources folder create the db and tables and sample data 

* The sql file can be run using using any client you have. Incase if you don't have one, I use HeidiSql client which is light weight

* If you are using Anypoint studio, import the application using pom file to the anypoint studio and deploy it

* Mule runtime version is 3.9.4

* If you are using mule runtime standalone server, start the server using the follwing command from bin directory

### `mule`

* Run the following command from the project directory where github project is cloned

### mvn clean install

* Copy the zip file created in the target folder into the apps folder in mule standalone server

* The application should be deployed in the mule server

* We can see the API console at : http://localhost:8081/console
