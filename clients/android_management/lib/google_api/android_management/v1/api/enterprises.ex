# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidManagement.V1.Api.Enterprises do
  @moduledoc """
  API calls for all endpoints tagged `Enterprises`.
  """

  alias GoogleApi.AndroidManagement.V1.Connection
  import GoogleApi.AndroidManagement.V1.RequestBuilder


  @doc """
  Creates an enterprise by completing the enterprise signup flow.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :signup_url_name (String): The name of the SignupUrl used to sign up for the enterprise.
    - :enterprise_token (String): The enterprise token appended to the callback URL.
    - :project_id (String): The id of the Google Cloud Platform project which will own the enterprise.
    - :body (Enterprise): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Enterprise{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_create(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Enterprise.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_create(connection, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"signupUrlName" => :query,
      :"enterpriseToken" => :query,
      :"projectId" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/enterprises")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.Enterprise{})
  end

  @doc """
  Issues a command to a device. The Operation resource returned contains a Command in its metadata field. Use the get operation method to get the status of the command.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String): The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :body (Command): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_issue_command(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Operation.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_devices_issue_command(connection, name, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/#{name}:issueCommand")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.Operation{})
  end

  @doc """
  Lists devices for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String): The name of the enterprise in the form enterprises/{enterpriseId}
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :page_size (Integer): The requested page size. The actual page size may be fixed to a min or max value.
    - :page_token (String): A token identifying a page of results the server should return.

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_devices_list(connection, parent, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"pageSize" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/#{parent}/devices")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse{})
  end

  @doc """
  Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn&#39;t support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String): The name of the operation resource to be cancelled.
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_operations_cancel(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Empty.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_devices_operations_cancel(connection, name, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query
    }
    %{}
    |> method(:post)
    |> url("/v1/#{name}:cancel")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.Empty{})
  end

  @doc """
  Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn&#39;t support this method, it returns google.rpc.Code.UNIMPLEMENTED.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String): The name of the operation resource to be deleted.
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_operations_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Empty.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_devices_operations_delete(connection, name, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query
    }
    %{}
    |> method(:delete)
    |> url("/v1/#{name}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.Empty{})
  end

  @doc """
  Lists operations that match the specified filter in the request. If the server doesn&#39;t support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \&quot;/v1/{name&#x3D;users/*}/operations\&quot; to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String): The name of the operation&#39;s parent resource.
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :page_size (Integer): The standard list page size.
    - :filter (String): The standard list filter.
    - :page_token (String): The standard list page token.

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.ListOperationsResponse{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_operations_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.ListOperationsResponse.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_devices_operations_list(connection, name, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"pageSize" => :query,
      :"filter" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/#{name}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.ListOperationsResponse{})
  end

  @doc """
  Updates a device.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String): The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :update_mask (String): The field mask indicating the fields to update. If not set, all modifiable fields will be modified.
    - :body (Device): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Device{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_patch(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Device.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_devices_patch(connection, name, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"updateMask" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/v1/#{name}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.Device{})
  end

  @doc """
  Creates an enrollment token for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String): The name of the enterprise in the form enterprises/{enterpriseId}
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :body (EnrollmentToken): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.EnrollmentToken{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_enrollment_tokens_create(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.EnrollmentToken.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_enrollment_tokens_create(connection, parent, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/#{parent}/enrollmentTokens")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.EnrollmentToken{})
  end

  @doc """
  Lists policies for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String): The name of the enterprise in the form enterprises/{enterpriseId}
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :page_size (Integer): The requested page size. The actual page size may be fixed to a min or max value.
    - :page_token (String): A token identifying a page of results the server should return.

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.ListPoliciesResponse{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_policies_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.ListPoliciesResponse.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_policies_list(connection, parent, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"pageSize" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/#{parent}/policies")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.ListPoliciesResponse{})
  end

  @doc """
  Creates a web token to access an embeddable managed Google Play web UI for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String): The name of the enterprise in the form enterprises/{enterpriseId}
  - opts (KeywordList): [optional] Optional parameters
    - :access_token (String): OAuth access token.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :alt (String): Data format for response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :body (WebToken): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.WebToken{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_web_tokens_create(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidManagement.V1.Model.WebToken.t} | {:error, Tesla.Env.t}
  def androidmanagement_enterprises_web_tokens_create(connection, parent, opts \\ []) do
    optional_params = %{
      :"access_token" => :query,
      :"prettyPrint" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"fields" => :query,
      :"alt" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"oauth_token" => :query,
      :"uploadType" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/#{parent}/webTokens")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidManagement.V1.Model.WebToken{})
  end
end
