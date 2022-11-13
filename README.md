# Reusable Modules
Resusable terraform modules to use it across different env , To run the tf from workflow service principal is needed , below are the steps to create it
### Create Service Principal
Service principal will be used by terraform to login in azure and run the commands
```shell
az login
az account set --subscription=<subscrition id>
az ad sp create-for-rbac -n "api://<name of your choice>" --role "Contributor" --scopes "/subscriptions/<subscrition id>"
```

Output
```json
{
  "appId": "bogus-bogus-4627-9010-bogus",  --Client id
  "displayName": "ahmarhusain",
  "name": "api://ahmarhusain",
  "password": "bogus.lAux7u-bogus", -- Client secret
  "tenant": "bogus-fa1a-bogus-9cf1-bogus"  -- Teanat id
}
```
