1.Create a project using force:object
	 a.sfdx force:project:create --projectname <Your project name> --outputdir <Path of file to be stored in hdd>
	 b.sfdx force:project:create --projectname SOAP --outputdir c:\Users\syedfurx\Documents\VSCODE\SOAP

2.Authorize
	 a.sfdx force:auth:web:login --setalias <anydesiredname> --instanceurl https://<test/login>.salesforce.com --setdefaultusername
	 b.sfdx force:auth:web:login --setalias litningpoc --instanceurl https://test.salesforce.com --setdefaultusername

3.Get Data From sandbox
(multi)  a.sfdx force:source:retrieve -m <desire meatadata comma seprated> [(Optional or else default org data is fetched) -u <username>]
(multi)	 b.sfdx force:source:retrieve -m ApexClass,AuraDefinitionBundle,LightningComponentBundle
(single) c.sfdx force:source:retrieve -m <desire meatadata>:<filename>
(single) d.sfdx force:source:retrieve -m ApexClass:My_Utils

4.Save Data to sandbox
(multi)  a.sfdx force:source:deploy -m <desire meatadata comma seprated>
(multi)  b.sfdx force:source:deploy -m ApexClass,AuraDefinitionBundle
(Single)  c.sfdx force:source:deploy -m <desire meatadata>:<file name>
(Single) d.sfdx force:source:deploy -m ApexClass:My_Utils


5.set default devhub org
sfdx force:config:set defaultdevhubusername=admin@dev.com

6.List All connected org list
sfdx force:org:list

6.1.Clear expired orgs from list
sfdx force:org:list  --clean

7.delete scratch org
sfdx force:org:delete -u admin@dev.com


8.Create scratch org
sfdx force:org:create -a admin -d 30 username=admin@dev.com
	a. -a : aliase parameter
	b. -d : days stcratch org is active max is 30
	c. username :  emaili id with with org is created

8.1.Create scratch org using defnation file
sfdx force:org:create  -f def.json -s -a <alias> -d 30 
def.json
`
{
    "orgName": "WORLD",
    "edition": "Developer",
    "features": [
        "MultiCurrency",
        "StateAndCountryPicklist"
    ],
    "username": "scratch20@world.com",
    "hasSampleData": false,
    "settings": {
        "languageSettings": {
            "enableTranslationWorkbench": true
        }
    }
}
`
	a.features: Array list to add features to be enabled in org
	b.settings: settings that need to be enabled in org
	c.edition: which edition of org you want to create 

9.open org
sfdx force:org:open -u admin@dev.com


10.push data from local to any scratch org
sfdx force:source:push -u admin@dev.com

11.copy changes from  scratch org to local
sfdx force:source:pull -u admin@dev.com

12.Deploy from scratch org to dev hub org
	12.a) convert scratch org formate to deploy formate
		 sfdx force:source:convert -r metadata
	12.b)deploy after converting 
			sfdx force:mdapi:deploy -d metadata -u syed@dev02.com

13.check deployment status 
sfdx force:mdapi:deploy:report

14.Generate password for scratch org
sfdx force:user:password:generate --targetusername scratch14@world.com

15.List packages installed in org
sfdx force:package:installed:list -u <alias/username>

16.Install package in scratch org
sfdx force:package:install --package <pkid>

17.Logout- Remove athuntication of org 
sfdx force:auth:logout -u <username>


Pulling LWC components 
Currently there is bug that gives error on retrieve of ApexClass,AuraDefinitionBundle,LightningComponentBundle
"Cannot read property 'fileName' of undefined."
WorkAround
1.Create package.xml in root directory with following content
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
<types>
<members>*</members>
<name>LightningComponentBundle</name>
</types>
<version>45.0</version>
</Package>
2.Run command sfdx force:mdapi:retrieve -r lwc -k package.xml in root directory
3.this will create zip file which will contain all LWC manually extract it and add files to force-app\main\default\lwc folder









[3]REF Command List :https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_source.htm?search_text=pull
[3]REF Meatada type name:https://developer.salesforce.com/docs/atlas.en-us.api_meta.meta/api_meta/meta_types_list.htm
[4]REF Command List :https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_source.htm?search_text=force:source:deploy
REF:https://gist.github.com/toadgeek/cdfbef4a96531f30b1ee9d10a5791755



