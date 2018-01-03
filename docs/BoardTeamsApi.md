# ConnectWise::BoardTeamsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_teams_count_get**](BoardTeamsApi.md#service_boards_id_teams_count_get) | **GET** /service/boards/{id}/teams/count | 
[**service_boards_id_teams_get**](BoardTeamsApi.md#service_boards_id_teams_get) | **GET** /service/boards/{id}/teams | 
[**service_boards_id_teams_post**](BoardTeamsApi.md#service_boards_id_teams_post) | **POST** /service/boards/{id}/teams | 
[**service_boards_id_teams_team_id_delete**](BoardTeamsApi.md#service_boards_id_teams_team_id_delete) | **DELETE** /service/boards/{id}/teams/{teamId} | 
[**service_boards_id_teams_team_id_get**](BoardTeamsApi.md#service_boards_id_teams_team_id_get) | **GET** /service/boards/{id}/teams/{teamId} | 
[**service_boards_id_teams_team_id_patch**](BoardTeamsApi.md#service_boards_id_teams_team_id_patch) | **PATCH** /service/boards/{id}/teams/{teamId} | 
[**service_boards_id_teams_team_id_put**](BoardTeamsApi.md#service_boards_id_teams_team_id_put) | **PUT** /service/boards/{id}/teams/{teamId} | 


# **service_boards_id_teams_count_get**
> Count service_boards_id_teams_count_get(id, opts)



Get Teams Count

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

api_instance = ConnectWise::BoardTeamsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_teams_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTeamsApi->service_boards_id_teams_count_get: #{e}"
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



# **service_boards_id_teams_get**
> Array&lt;BoardTeam&gt; service_boards_id_teams_get(id, opts)



Get Teams

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

api_instance = ConnectWise::BoardTeamsApi.new

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
  result = api_instance.service_boards_id_teams_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTeamsApi->service_boards_id_teams_get: #{e}"
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

[**Array&lt;BoardTeam&gt;**](BoardTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_teams_post**
> BoardTeam service_boards_id_teams_post(id, _board_team)



Create Team

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

api_instance = ConnectWise::BoardTeamsApi.new

id = 56 # Integer | 

_board_team = ConnectWise::BoardTeam.new # BoardTeam | 


begin
  result = api_instance.service_boards_id_teams_post(id, _board_team)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTeamsApi->service_boards_id_teams_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **_board_team** | [**BoardTeam**](BoardTeam.md)|  | 

### Return type

[**BoardTeam**](BoardTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_teams_team_id_delete**
> service_boards_id_teams_team_id_delete(id, team_id)



Delete Team By Id

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

api_instance = ConnectWise::BoardTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 


begin
  api_instance.service_boards_id_teams_team_id_delete(id, team_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTeamsApi->service_boards_id_teams_team_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_teams_team_id_get**
> BoardTeam service_boards_id_teams_team_id_get(id, team_id)



Get Team By Id

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

api_instance = ConnectWise::BoardTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_teams_team_id_get(id, team_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTeamsApi->service_boards_id_teams_team_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 

### Return type

[**BoardTeam**](BoardTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_teams_team_id_patch**
> BoardTeam service_boards_id_teams_team_id_patch(id, team_id, operations)



Update Team

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

api_instance = ConnectWise::BoardTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_teams_team_id_patch(id, team_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTeamsApi->service_boards_id_teams_team_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardTeam**](BoardTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_teams_team_id_put**
> BoardTeam service_boards_id_teams_team_id_put(id, team_id, _board_team)



Replace Team

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

api_instance = ConnectWise::BoardTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 

_board_team = ConnectWise::BoardTeam.new # BoardTeam | 


begin
  result = api_instance.service_boards_id_teams_team_id_put(id, team_id, _board_team)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTeamsApi->service_boards_id_teams_team_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 
 **_board_team** | [**BoardTeam**](BoardTeam.md)|  | 

### Return type

[**BoardTeam**](BoardTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



