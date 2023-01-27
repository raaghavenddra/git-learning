CREATE TABLE META_TABLE (SchemaName VARCHAR(50),
                        TableName VARCHAR(50),
						ContainerName VARCHAR(50),
						Status int );
						
INSERT INTO META_TABLE VALUES ('dbo','EMP','EMP_CON',0),
                              ('dbo','DEPT','DEPT_CON',0),
							  ('dbo','SALGRADE','SALGRADE_CON',0),
							  ('dbo','TEST','TEST_CON',1);



SELECT * FROM META_TABLE WHERE Status =0;

----------------------------------------
               LOGIC APPS CODE 
----------------------------------------			   

Step-1 :


   {
    "properties": {
        "DataFactoryName": {
            "type": "string"
        },
        "EmailTo": {
            "type": "string"
        },
        "ErrorMessage": {
            "type": "string"
        },
        "PipelineName": {
            "type": "string"
        },
        "Subject": {
            "type": "string"
        }
    },
    "type": "object"
     }


 Step-2 : For Success

 {
"DatafactoryName": "@{pipeline().DataFactory}",
"PipelineName": "@{pipeline().pipeline}",
"Subject": "File is available!",
"ErrorMessage": "File is processed",
"EmailTo": "raaghavenddra@gmail.com"
 }



Step-3 : For failure 

 {
"DatafactoryName": "@{pipeline().DataFactory}",
"PipelineName": "@{pipeline().pipeline}",
"Subject": "File is not available!",
"ErrorMessage": "File is not processed",
"EmailTo": "raaghavenddra@gmail.com"
 }