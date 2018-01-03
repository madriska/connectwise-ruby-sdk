# ConnectWise::AuditTrailApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_audittrail_count_get**](AuditTrailApi.md#system_audittrail_count_get) | **GET** /system/audittrail/count | 
[**system_audittrail_get**](AuditTrailApi.md#system_audittrail_get) | **GET** /system/audittrail | 


# **system_audittrail_count_get**
> Count system_audittrail_count_get(opts)



Get Members Count

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

api_instance = ConnectWise::AuditTrailApi.new

opts = { 
  type: "type_example", # String | 
  id: 56, # Integer | 
  device_identifier: "device_identifier_example" # String | 
}

begin
  result = api_instance.system_audittrail_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AuditTrailApi->system_audittrail_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  | [optional] 
 **id** | **Integer**|  | [optional] 
 **device_identifier** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_audittrail_get**
> Array&lt;AuditTrailEntry&gt; system_audittrail_get(opts)



Get Audit Trail

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

api_instance = ConnectWise::AuditTrailApi.new

opts = { 
  type: "type_example", # String | 
  id: 56, # Integer | 
  device_identifier: "device_identifier_example" # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_audittrail_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AuditTrailApi->system_audittrail_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  | [optional] 
 **id** | **Integer**|  | [optional] 
 **device_identifier** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;AuditTrailEntry&gt;**](AuditTrailEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



