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

defmodule GoogleApi.YouTube.V3.Api.LiveChatModerators do
  @moduledoc """
  API calls for all endpoints tagged `LiveChatModerators`.
  """

  alias GoogleApi.YouTube.V3.Connection
  import GoogleApi.YouTube.V3.RequestBuilder


  @doc """
  Removes a chat moderator.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - id (String): The id parameter identifies the chat moderator to remove. The value uniquely identifies both the moderator and the chat.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec youtube_live_chat_moderators_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def youtube_live_chat_moderators_delete(connection, id, opts \\ []) do
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
    |> url("/liveChat/moderators")
    |> add_param(:query, :"id", id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Adds a new moderator for the chat.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String): The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response returns. Set the parameter value to snippet.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (LiveChatModerator): 

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.LiveChatModerator{}} on success
  {:error, info} on failure
  """
  @spec youtube_live_chat_moderators_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.YouTube.V3.Model.LiveChatModerator.t} | {:error, Tesla.Env.t}
  def youtube_live_chat_moderators_insert(connection, part, opts \\ []) do
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
    |> url("/liveChat/moderators")
    |> add_param(:query, :"part", part)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.YouTube.V3.Model.LiveChatModerator{})
  end

  @doc """
  Lists moderators for a live chat.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - live_chat_id (String): The liveChatId parameter specifies the YouTube live chat for which the API should return moderators.
  - part (String): The part parameter specifies the liveChatModerator resource parts that the API response will include. Supported values are id and snippet.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): The maxResults parameter specifies the maximum number of items that should be returned in the result set.
    - :page_token (String): The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.LiveChatModeratorListResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_live_chat_moderators_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.YouTube.V3.Model.LiveChatModeratorListResponse.t} | {:error, Tesla.Env.t}
  def youtube_live_chat_moderators_list(connection, live_chat_id, part, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/liveChat/moderators")
    |> add_param(:query, :"liveChatId", live_chat_id)
    |> add_param(:query, :"part", part)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.YouTube.V3.Model.LiveChatModeratorListResponse{})
  end
end
