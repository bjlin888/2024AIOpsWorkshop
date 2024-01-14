Enable Application Insights - Create a iis-web-app resource group
```
aws resource-groups create-group --name iis-web-app \
--resource-query '{"Type":"TAG_FILTERS_1_0","Query":"{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"TagFilters\":[{\"Key\":\"AppInsights\",\"Values\":[\"yes\"]}]}"}'
```


app-insights-problem-generator.sh, --stack-name replace your settings.
```
URL1=$(aws cloudformation describe-stacks --stack-name AIOpsWorkshop2024 | jq -r '.Stacks[0].Outputs[] | select(.OutputKey == "WebsiteURL") | .OutputValue')
```