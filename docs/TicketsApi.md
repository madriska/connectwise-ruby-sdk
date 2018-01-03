# ConnectWise::TicketsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_tickets_count_get**](TicketsApi.md#service_tickets_count_get) | **GET** /service/tickets/count | 
[**service_tickets_get**](TicketsApi.md#service_tickets_get) | **GET** /service/tickets | 
[**service_tickets_id_activities_count_get**](TicketsApi.md#service_tickets_id_activities_count_get) | **GET** /service/tickets/{id}/activities/count | 
[**service_tickets_id_activities_get**](TicketsApi.md#service_tickets_id_activities_get) | **GET** /service/tickets/{id}/activities | 
[**service_tickets_id_configurations_config_id_delete**](TicketsApi.md#service_tickets_id_configurations_config_id_delete) | **DELETE** /service/tickets/{id}/configurations/{configId} | 
[**service_tickets_id_configurations_config_id_get**](TicketsApi.md#service_tickets_id_configurations_config_id_get) | **GET** /service/tickets/{id}/configurations/{configId} | 
[**service_tickets_id_configurations_count_get**](TicketsApi.md#service_tickets_id_configurations_count_get) | **GET** /service/tickets/{id}/configurations/count | 
[**service_tickets_id_configurations_get**](TicketsApi.md#service_tickets_id_configurations_get) | **GET** /service/tickets/{id}/configurations | 
[**service_tickets_id_configurations_post**](TicketsApi.md#service_tickets_id_configurations_post) | **POST** /service/tickets/{id}/configurations | 
[**service_tickets_id_delete**](TicketsApi.md#service_tickets_id_delete) | **DELETE** /service/tickets/{id} | 
[**service_tickets_id_documents_count_get**](TicketsApi.md#service_tickets_id_documents_count_get) | **GET** /service/tickets/{id}/documents/count | 
[**service_tickets_id_documents_get**](TicketsApi.md#service_tickets_id_documents_get) | **GET** /service/tickets/{id}/documents | 
[**service_tickets_id_get**](TicketsApi.md#service_tickets_id_get) | **GET** /service/tickets/{id} | 
[**service_tickets_id_merge_post**](TicketsApi.md#service_tickets_id_merge_post) | **POST** /service/tickets/{id}/merge | 
[**service_tickets_id_patch**](TicketsApi.md#service_tickets_id_patch) | **PATCH** /service/tickets/{id} | 
[**service_tickets_id_products_count_get**](TicketsApi.md#service_tickets_id_products_count_get) | **GET** /service/tickets/{id}/products/count | 
[**service_tickets_id_products_get**](TicketsApi.md#service_tickets_id_products_get) | **GET** /service/tickets/{id}/products | 
[**service_tickets_id_put**](TicketsApi.md#service_tickets_id_put) | **PUT** /service/tickets/{id} | 
[**service_tickets_id_scheduleentries_count_get**](TicketsApi.md#service_tickets_id_scheduleentries_count_get) | **GET** /service/tickets/{id}/scheduleentries/count | 
[**service_tickets_id_scheduleentries_get**](TicketsApi.md#service_tickets_id_scheduleentries_get) | **GET** /service/tickets/{id}/scheduleentries | 
[**service_tickets_id_timeentries_count_get**](TicketsApi.md#service_tickets_id_timeentries_count_get) | **GET** /service/tickets/{id}/timeentries/count | 
[**service_tickets_id_timeentries_get**](TicketsApi.md#service_tickets_id_timeentries_get) | **GET** /service/tickets/{id}/timeentries | 
[**service_tickets_post**](TicketsApi.md#service_tickets_post) | **POST** /service/tickets | 
[**service_tickets_search_post**](TicketsApi.md#service_tickets_search_post) | **POST** /service/tickets/search | 


# **service_tickets_count_get**
> Count service_tickets_count_get(opts)



Get Tickets Count

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

api_instance = ConnectWise::TicketsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.service_tickets_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_get**
> Array&lt;Ticket&gt; service_tickets_get(opts)



Get Tickets

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

api_instance = ConnectWise::TicketsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_get: #{e}"
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

[**Array&lt;Ticket&gt;**](Ticket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_activities_count_get**
> Count service_tickets_id_activities_count_get(id)



Gets count of activities associated to the ticket          /// Please use the /sales/activities/count?conditions=ticket/id={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_activities_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_activities_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_activities_get**
> Array&lt;ActivityReference&gt; service_tickets_id_activities_get(id, opts)



Gets activities associated to the ticket          /// Please use the /sales/activities?conditions=ticket/id={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_id_activities_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_activities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ActivityReference&gt;**](ActivityReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_configurations_config_id_delete**
> service_tickets_id_configurations_config_id_delete(id, config_id)



Delete Configuration Association

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

config_id = 56 # Integer | 


begin
  api_instance.service_tickets_id_configurations_config_id_delete(id, config_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_configurations_config_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **config_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_tickets_id_configurations_config_id_get**
> ConfigurationReference service_tickets_id_configurations_config_id_get(id, config_id)



Get Configuration Association

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

config_id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_configurations_config_id_get(id, config_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_configurations_config_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **config_id** | **Integer**|  | 

### Return type

[**ConfigurationReference**](ConfigurationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_configurations_count_get**
> Count service_tickets_id_configurations_count_get(id)



Get Ticket Configurations Count

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_configurations_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_configurations_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_configurations_get**
> Array&lt;ConfigurationReference&gt; service_tickets_id_configurations_get(id, opts)



Get Ticket Configurations

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_id_configurations_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_configurations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ConfigurationReference&gt;**](ConfigurationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_configurations_post**
> ConfigurationReference service_tickets_id_configurations_post(id, configuration)



Create Configuration Association

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

configuration = ConnectWise::ConfigurationReference.new # ConfigurationReference | 


begin
  result = api_instance.service_tickets_id_configurations_post(id, configuration)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_configurations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **configuration** | [**ConfigurationReference**](ConfigurationReference.md)|  | 

### Return type

[**ConfigurationReference**](ConfigurationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_id_delete**
> service_tickets_id_delete(id)



Delete Ticket By Id

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 


begin
  api_instance.service_tickets_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_delete: #{e}"
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



# **service_tickets_id_documents_count_get**
> Count service_tickets_id_documents_count_get(id)



Get Ticket Documents Count

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_documents_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_documents_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_documents_get**
> Array&lt;DocumentReference&gt; service_tickets_id_documents_get(id, opts)



Gets the documents associated to the ticket          /// Please use the /system/documents?recordType=Ticket&amp;recordId={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_id_documents_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;DocumentReference&gt;**](DocumentReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_get**
> Ticket service_tickets_id_get(id)



Get Ticket By Id

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_merge_post**
> SuccessResponse service_tickets_id_merge_post(id, merge)



Merge Company

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

merge = ConnectWise::TicketMerge.new # TicketMerge | 


begin
  result = api_instance.service_tickets_id_merge_post(id, merge)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_merge_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **merge** | [**TicketMerge**](TicketMerge.md)|  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_id_patch**
> Ticket service_tickets_id_patch(id, operations)



Update Ticket

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_tickets_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_id_products_count_get**
> Count service_tickets_id_products_count_get(id)



Gets the products associated to the ticket          /// Please use the /procurement/products/count?conditions=chargeToType='Ticket' AND chargeToId={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_products_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_products_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_products_get**
> Array&lt;ProductReference&gt; service_tickets_id_products_get(id, opts)



Gets the products associated to the ticket          /// Please use the /procurement/products?conditions=chargeToType='Ticket' AND chargeToId={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_id_products_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_products_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ProductReference&gt;**](ProductReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_put**
> Ticket service_tickets_id_put(id, ticket)



Replace Ticket

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

ticket = ConnectWise::Ticket.new # Ticket | 


begin
  result = api_instance.service_tickets_id_put(id, ticket)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **ticket** | [**Ticket**](Ticket.md)|  | 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_id_scheduleentries_count_get**
> Count service_tickets_id_scheduleentries_count_get(id)



Gets the schedule entries count associated to the ticket          /// Please use the /schedule/entries/count?conditions=type/id=4 AND objectId={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_scheduleentries_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_scheduleentries_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_scheduleentries_get**
> Array&lt;ScheduleEntryReference&gt; service_tickets_id_scheduleentries_get(id, opts)



Gets the schedule entries associated to the ticket          /// Please use the /schedule/entries?conditions=type/id=4 AND objectId={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_id_scheduleentries_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_scheduleentries_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ScheduleEntryReference&gt;**](ScheduleEntryReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_timeentries_count_get**
> Count service_tickets_id_timeentries_count_get(id)



Gets time entries count associated to the ticket          /// Please use the /time/entries/count?conditions=(chargeToType=\"ServiceTicket\" OR chargeToType=\"ProjectTicket\") AND chargeToId={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_timeentries_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_timeentries_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_timeentries_get**
> Array&lt;TimeEntryReference&gt; service_tickets_id_timeentries_get(id, opts)



Gets time entries associated to the ticket          /// Please use the /time/entries?conditions=(chargeToType=\"ServiceTicket\" OR chargeToType=\"ProjectTicket\") AND chargeToId={id} endpoint

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

api_instance = ConnectWise::TicketsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_id_timeentries_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_id_timeentries_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;TimeEntryReference&gt;**](TimeEntryReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_post**
> Ticket service_tickets_post(ticket)



Create Ticket

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

api_instance = ConnectWise::TicketsApi.new

ticket = ConnectWise::Ticket.new # Ticket | 


begin
  result = api_instance.service_tickets_post(ticket)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket** | [**Ticket**](Ticket.md)|  | 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_search_post**
> Array&lt;Ticket&gt; service_tickets_search_post(filter_values, opts)



Ticket Search

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

api_instance = ConnectWise::TicketsApi.new

filter_values = ConnectWise::FilterValues.new # FilterValues | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_search_post(filter_values, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketsApi->service_tickets_search_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_values** | [**FilterValues**](FilterValues.md)|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Ticket&gt;**](Ticket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



