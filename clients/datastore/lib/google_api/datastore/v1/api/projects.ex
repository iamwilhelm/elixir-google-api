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

defmodule GoogleApi.Datastore.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.Datastore.V1.Connection
  import GoogleApi.Datastore.V1.RequestBuilder


  @doc """
  Allocates IDs for the given keys, which is useful for referencing an entity before it is inserted.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - project_id (String): The ID of the project against which to make the request.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (AllocateIdsRequest): 

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.AllocateIdsResponse{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_allocate_ids(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.AllocateIdsResponse.t} | {:error, Tesla.Env.t}
  def datastore_projects_allocate_ids(connection, project_id, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/projects/#{project_id}:allocateIds")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.AllocateIdsResponse{})
  end

  @doc """
  Begins a new transaction.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - project_id (String): The ID of the project against which to make the request.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (BeginTransactionRequest): 

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.BeginTransactionResponse{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_begin_transaction(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.BeginTransactionResponse.t} | {:error, Tesla.Env.t}
  def datastore_projects_begin_transaction(connection, project_id, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/projects/#{project_id}:beginTransaction")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.BeginTransactionResponse{})
  end

  @doc """
  Commits a transaction, optionally creating, deleting or modifying some entities.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - project_id (String): The ID of the project against which to make the request.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (CommitRequest): 

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.CommitResponse{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_commit(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.CommitResponse.t} | {:error, Tesla.Env.t}
  def datastore_projects_commit(connection, project_id, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/projects/#{project_id}:commit")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.CommitResponse{})
  end

  @doc """
  Looks up entities by key.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - project_id (String): The ID of the project against which to make the request.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (LookupRequest): 

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.LookupResponse{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_lookup(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.LookupResponse.t} | {:error, Tesla.Env.t}
  def datastore_projects_lookup(connection, project_id, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/projects/#{project_id}:lookup")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.LookupResponse{})
  end

  @doc """
  Starts asynchronous cancellation on a long-running operation.  The server makes a best effort to cancel the operation, but success is not guaranteed.  If the server doesn&#39;t support this method, it returns &#x60;google.rpc.Code.UNIMPLEMENTED&#x60;.  Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to &#x60;Code.CANCELLED&#x60;.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - name (String): The name of the operation resource to be cancelled.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_operations_cancel(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.Empty.t} | {:error, Tesla.Env.t}
  def datastore_projects_operations_cancel(connection, name, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query
    }
    %{}
    |> method(:post)
    |> url("/v1/#{name}:cancel")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.Empty{})
  end

  @doc """
  Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn&#39;t support this method, it returns &#x60;google.rpc.Code.UNIMPLEMENTED&#x60;.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - name (String): The name of the operation resource to be deleted.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_operations_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.Empty.t} | {:error, Tesla.Env.t}
  def datastore_projects_operations_delete(connection, name, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query
    }
    %{}
    |> method(:delete)
    |> url("/v1/#{name}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.Empty{})
  end

  @doc """
  Gets the latest state of a long-running operation.  Clients can use this method to poll the operation result at intervals as recommended by the API service.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - name (String): The name of the operation resource.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_operations_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation.t} | {:error, Tesla.Env.t}
  def datastore_projects_operations_get(connection, name, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/#{name}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation{})
  end

  @doc """
  Lists operations that match the specified filter in the request. If the server doesn&#39;t support this method, it returns &#x60;UNIMPLEMENTED&#x60;.  NOTE: the &#x60;name&#x60; binding allows API services to override the binding to use different resource name schemes, such as &#x60;users/*/operations&#x60;. To override the binding, API services can add a binding such as &#x60;\&quot;/v1/{name&#x3D;users/*}/operations\&quot;&#x60; to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - name (String): The name of the operation&#39;s parent resource.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :filter (String): The standard list filter.
    - :page_token (String): The standard list page token.
    - :page_size (Integer): The standard list page size.

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.GoogleLongrunningListOperationsResponse{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_operations_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.GoogleLongrunningListOperationsResponse.t} | {:error, Tesla.Env.t}
  def datastore_projects_operations_list(connection, name, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query,
      :"filter" => :query,
      :"pageToken" => :query,
      :"pageSize" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/#{name}/operations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.GoogleLongrunningListOperationsResponse{})
  end

  @doc """
  Rolls back a transaction.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - project_id (String): The ID of the project against which to make the request.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (RollbackRequest): 

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.RollbackResponse{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_rollback(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.RollbackResponse.t} | {:error, Tesla.Env.t}
  def datastore_projects_rollback(connection, project_id, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/projects/#{project_id}:rollback")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.RollbackResponse{})
  end

  @doc """
  Queries for entities.

  ## Parameters

  - connection (GoogleApi.Datastore.V1.Connection): Connection to server
  - project_id (String): The ID of the project against which to make the request.
  - opts (KeywordList): [optional] Optional parameters
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (RunQueryRequest): 

  ## Returns

  {:ok, %GoogleApi.Datastore.V1.Model.RunQueryResponse{}} on success
  {:error, info} on failure
  """
  @spec datastore_projects_run_query(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Datastore.V1.Model.RunQueryResponse.t} | {:error, Tesla.Env.t}
  def datastore_projects_run_query(connection, project_id, opts \\ []) do
    optional_params = %{
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/projects/#{project_id}:runQuery")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Datastore.V1.Model.RunQueryResponse{})
  end
end
