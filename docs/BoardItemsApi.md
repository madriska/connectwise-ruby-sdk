# ConnectWise::BoardItemsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_items_count_get**](BoardItemsApi.md#service_boards_id_items_count_get) | **GET** /service/boards/{id}/items/count | 
[**service_boards_id_items_get**](BoardItemsApi.md#service_boards_id_items_get) | **GET** /service/boards/{id}/items | 
[**service_boards_id_items_item_id_delete**](BoardItemsApi.md#service_boards_id_items_item_id_delete) | **DELETE** /service/boards/{id}/items/{itemId} | 
[**service_boards_id_items_item_id_get**](BoardItemsApi.md#service_boards_id_items_item_id_get) | **GET** /service/boards/{id}/items/{itemId} | 
[**service_boards_id_items_item_id_patch**](BoardItemsApi.md#service_boards_id_items_item_id_patch) | **PATCH** /service/boards/{id}/items/{itemId} | 
[**service_boards_id_items_item_id_put**](BoardItemsApi.md#service_boards_id_items_item_id_put) | **PUT** /service/boards/{id}/items/{itemId} | 
[**service_boards_id_items_post**](BoardItemsApi.md#service_boards_id_items_post) | **POST** /service/boards/{id}/items | 


# **service_boards_id_items_count_get**
> Count service_boards_id_items_count_get(id, opts)



Get Items Count

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

api_instance = ConnectWise::BoardItemsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_items_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemsApi->service_boards_id_items_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_items_get**
> Array&lt;BoardItem&gt; service_boards_id_items_get(id, opts)



Get Items

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

api_instance = ConnectWise::BoardItemsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_boards_id_items_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemsApi->service_boards_id_items_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;BoardItem&gt;**](BoardItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_items_item_id_delete**
> service_boards_id_items_item_id_delete(id, item_id)



Delete Item By Id

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

api_instance = ConnectWise::BoardItemsApi.new

id = 56 # Integer | 

item_id = 56 # Integer | 


begin
  api_instance.service_boards_id_items_item_id_delete(id, item_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemsApi->service_boards_id_items_item_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **item_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_items_item_id_get**
> BoardItem service_boards_id_items_item_id_get(id, item_id)



Get Item By Id

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

api_instance = ConnectWise::BoardItemsApi.new

id = 56 # Integer | 

item_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_items_item_id_get(id, item_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemsApi->service_boards_id_items_item_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **item_id** | **Integer**|  | 

### Return type

[**BoardItem**](BoardItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_items_item_id_patch**
> BoardItem service_boards_id_items_item_id_patch(id, item_id, operations)



Update Item

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

api_instance = ConnectWise::BoardItemsApi.new

id = 56 # Integer | 

item_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_items_item_id_patch(id, item_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemsApi->service_boards_id_items_item_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **item_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardItem**](BoardItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_items_item_id_put**
> BoardItem service_boards_id_items_item_id_put(id, item_id, board_item)



Replace Item

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

api_instance = ConnectWise::BoardItemsApi.new

id = 56 # Integer | 

item_id = 56 # Integer | 

board_item = ConnectWise::BoardItem.new # BoardItem | 


begin
  result = api_instance.service_boards_id_items_item_id_put(id, item_id, board_item)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemsApi->service_boards_id_items_item_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **item_id** | **Integer**|  | 
 **board_item** | [**BoardItem**](BoardItem.md)|  | 

### Return type

[**BoardItem**](BoardItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_items_post**
> BoardItem service_boards_id_items_post(id, board_item)



Create Item

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

api_instance = ConnectWise::BoardItemsApi.new

id = 56 # Integer | 

board_item = ConnectWise::BoardItem.new # BoardItem | 


begin
  result = api_instance.service_boards_id_items_post(id, board_item)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemsApi->service_boards_id_items_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_item** | [**BoardItem**](BoardItem.md)|  | 

### Return type

[**BoardItem**](BoardItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



