# Connectwise::SurveysApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_surveys_count_get**](SurveysApi.md#service_surveys_count_get) | **GET** /service/surveys/count | 
[**service_surveys_get**](SurveysApi.md#service_surveys_get) | **GET** /service/surveys | 
[**service_surveys_id_delete**](SurveysApi.md#service_surveys_id_delete) | **DELETE** /service/surveys/{id} | 
[**service_surveys_id_get**](SurveysApi.md#service_surveys_id_get) | **GET** /service/surveys/{id} | 
[**service_surveys_id_patch**](SurveysApi.md#service_surveys_id_patch) | **PATCH** /service/surveys/{id} | 
[**service_surveys_id_put**](SurveysApi.md#service_surveys_id_put) | **PUT** /service/surveys/{id} | 
[**service_surveys_post**](SurveysApi.md#service_surveys_post) | **POST** /service/surveys | 


# **service_surveys_count_get**
> Count service_surveys_count_get(opts)



Get Surveys Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SurveysApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_surveys_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveysApi->service_surveys_count_get: #{e}"
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



# **service_surveys_get**
> Array&lt;Survey&gt; service_surveys_get(opts)



Get Surveys

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SurveysApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_surveys_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveysApi->service_surveys_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Survey&gt;**](Survey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_id_delete**
> service_surveys_id_delete(id)



Delete Survey By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SurveysApi.new

id = 56 # Integer | 


begin
  api_instance.service_surveys_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveysApi->service_surveys_id_delete: #{e}"
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



# **service_surveys_id_get**
> Survey service_surveys_id_get(id)



Get Survey By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SurveysApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_surveys_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveysApi->service_surveys_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Survey**](Survey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_id_patch**
> Survey service_surveys_id_patch(id, operations)



Update Survey

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SurveysApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_surveys_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveysApi->service_surveys_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Survey**](Survey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_id_put**
> Survey service_surveys_id_put(id, survey)



Replace Survey

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SurveysApi.new

id = 56 # Integer | 

survey = Connectwise::Survey.new # Survey | 


begin
  result = api_instance.service_surveys_id_put(id, survey)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveysApi->service_surveys_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey** | [**Survey**](Survey.md)|  | 

### Return type

[**Survey**](Survey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_post**
> Survey service_surveys_post(survey)



Create Survey

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::SurveysApi.new

survey = Connectwise::Survey.new # Survey | 


begin
  result = api_instance.service_surveys_post(survey)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveysApi->service_surveys_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey** | [**Survey**](Survey.md)|  | 

### Return type

[**Survey**](Survey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



