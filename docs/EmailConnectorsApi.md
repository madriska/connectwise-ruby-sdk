# ConnectWise::EmailConnectorsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_email_connectors_count_get**](EmailConnectorsApi.md#system_email_connectors_count_get) | **GET** /system/emailConnectors/count | 
[**system_email_connectors_get**](EmailConnectorsApi.md#system_email_connectors_get) | **GET** /system/emailConnectors | 
[**system_email_connectors_id_delete**](EmailConnectorsApi.md#system_email_connectors_id_delete) | **DELETE** /system/emailConnectors/{id} | 
[**system_email_connectors_id_get**](EmailConnectorsApi.md#system_email_connectors_id_get) | **GET** /system/emailConnectors/{id} | 
[**system_email_connectors_id_patch**](EmailConnectorsApi.md#system_email_connectors_id_patch) | **PATCH** /system/emailConnectors/{id} | 
[**system_email_connectors_id_put**](EmailConnectorsApi.md#system_email_connectors_id_put) | **PUT** /system/emailConnectors/{id} | 
[**system_email_connectors_post**](EmailConnectorsApi.md#system_email_connectors_post) | **POST** /system/emailConnectors | 


# **system_email_connectors_count_get**
> Count system_email_connectors_count_get(opts)



Get Email Connectors Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::EmailConnectorsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_email_connectors_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorsApi->system_email_connectors_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_connectors_get**
> Array&lt;EmailConnector&gt; system_email_connectors_get(opts)



Get Email Connectors

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::EmailConnectorsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_email_connectors_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorsApi->system_email_connectors_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;EmailConnector&gt;**](EmailConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_connectors_id_delete**
> system_email_connectors_id_delete(id)



Delete Email Connector By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::EmailConnectorsApi.new

id = 56 # Integer | 


begin
  api_instance.system_email_connectors_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorsApi->system_email_connectors_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_email_connectors_id_get**
> EmailConnector system_email_connectors_id_get(id)



Get Email Connector By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::EmailConnectorsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_email_connectors_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorsApi->system_email_connectors_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**EmailConnector**](EmailConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_connectors_id_patch**
> EmailConnector system_email_connectors_id_patch(id, operations)



Update Email Connector

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::EmailConnectorsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_email_connectors_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorsApi->system_email_connectors_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**EmailConnector**](EmailConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_email_connectors_id_put**
> EmailConnector system_email_connectors_id_put(id, email_connector)



Replace Email Connector

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::EmailConnectorsApi.new

id = 56 # Integer | 

email_connector = ConnectWise::EmailConnector.new # EmailConnector | 


begin
  result = api_instance.system_email_connectors_id_put(id, email_connector)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorsApi->system_email_connectors_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_connector** | [**EmailConnector**](EmailConnector.md)|  | 

### Return type

[**EmailConnector**](EmailConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_email_connectors_post**
> EmailConnector system_email_connectors_post(email_connector)



Create Email Connector

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::EmailConnectorsApi.new

email_connector = ConnectWise::EmailConnector.new # EmailConnector | 


begin
  result = api_instance.system_email_connectors_post(email_connector)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorsApi->system_email_connectors_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_connector** | [**EmailConnector**](EmailConnector.md)|  | 

### Return type

[**EmailConnector**](EmailConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



