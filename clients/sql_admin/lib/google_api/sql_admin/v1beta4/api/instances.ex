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

defmodule GoogleApi.SQLAdmin.V1beta4.Api.Instances do
  @moduledoc """
  API calls for all endpoints tagged `Instances`.
  """

  alias GoogleApi.SQLAdmin.V1beta4.Connection
  import GoogleApi.SQLAdmin.V1beta4.RequestBuilder


  @doc """
  Creates a Cloud SQL instance as a clone of the source instance. The API is not ready for Second Generation instances yet.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the source as well as the clone Cloud SQL instance.
  - instance (String): The ID of the Cloud SQL instance to be cloned (source). This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (InstancesCloneRequest): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_clone(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_clone(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/clone")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Deletes a Cloud SQL instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance to be deleted.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_delete(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/projects/#{project}/instances/#{instance}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Exports data from a Cloud SQL instance to a Google Cloud Storage bucket as a MySQL dump file.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance to be exported.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (InstancesExportRequest): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_export(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_export(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/export")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Failover the instance to its failover replica instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): ID of the project that contains the read replica.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (InstancesFailoverRequest): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_failover(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_failover(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/failover")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Retrieves a resource containing information about a Cloud SQL instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Database instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance.t} | {:error, Tesla.Env.t}
  def sql_instances_get(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/projects/#{project}/instances/#{instance}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance{})
  end

  @doc """
  Imports data into a Cloud SQL instance from a MySQL dump file in Google Cloud Storage.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (InstancesImportRequest): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_import(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_import(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/import")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Creates a new Cloud SQL instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project to which the newly created Cloud SQL instances should belong.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DatabaseInstance): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_insert(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Lists instances under a given project in the alphabetical order of the instance name.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project for which to list Cloud SQL instances.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :filter (String): An expression for filtering the results of the request, such as by name or label.
    - :max_results (Integer): The maximum number of results to return per response.
    - :page_token (String): A previously-returned page token representing part of the larger set of results to view.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.InstancesListResponse{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.InstancesListResponse.t} | {:error, Tesla.Env.t}
  def sql_instances_list(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"filter" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/projects/#{project}/instances")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.InstancesListResponse{})
  end

  @doc """
  Updates settings of a Cloud SQL instance. Caution: This is not a partial update, so you must include values for all the settings that you want to retain. For partial updates, use patch.. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DatabaseInstance): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_patch(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/projects/#{project}/instances/#{instance}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Promotes the read replica instance to be a stand-alone Cloud SQL instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): ID of the project that contains the read replica.
  - instance (String): Cloud SQL read replica instance name.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_promote_replica(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_promote_replica(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/promoteReplica")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Deletes all client certificates and generates a new server SSL certificate for the instance. The changes will not take effect until the instance is restarted. Existing instances without a server certificate will need to call this once to set a server certificate.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_reset_ssl_config(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_reset_ssl_config(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/resetSslConfig")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Restarts a Cloud SQL instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance to be restarted.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_restart(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_restart(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/restart")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Restores a backup of a Cloud SQL instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (InstancesRestoreBackupRequest): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_restore_backup(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_restore_backup(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/restoreBackup")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Starts the replication in the read replica instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): ID of the project that contains the read replica.
  - instance (String): Cloud SQL read replica instance name.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_start_replica(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_start_replica(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/startReplica")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Stops the replication in the read replica instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): ID of the project that contains the read replica.
  - instance (String): Cloud SQL read replica instance name.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_stop_replica(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_stop_replica(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/stopReplica")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Truncate MySQL general and slow query log tables

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the Cloud SQL project.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (InstancesTruncateLogRequest): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_truncate_log(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_truncate_log(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/projects/#{project}/instances/#{instance}/truncateLog")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Updates settings of a Cloud SQL instance. Caution: This is not a partial update, so you must include values for all the settings that you want to retain. For partial updates, use patch.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DatabaseInstance): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_instances_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_instances_update(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/projects/#{project}/instances/#{instance}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end
end
