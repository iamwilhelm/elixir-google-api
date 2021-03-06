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

defmodule GoogleApi.Games.V1.Api.TurnBasedMatches do
  @moduledoc """
  API calls for all endpoints tagged `TurnBasedMatches`.
  """

  alias GoogleApi.Games.V1.Connection
  import GoogleApi.Games.V1.RequestBuilder


  @doc """
  Cancel a turn-based match.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_cancel(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def games_turn_based_matches_cancel(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query
    }
    %{}
    |> method(:put)
    |> url("/turnbasedmatches/#{match_id}/cancel")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Create a turn-based match.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.
    - :body (TurnBasedMatchCreateRequest): 

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_create(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_create(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/turnbasedmatches/create")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatch{})
  end

  @doc """
  Decline an invitation to play a turn-based match.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_decline(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_decline(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query
    }
    %{}
    |> method(:put)
    |> url("/turnbasedmatches/#{match_id}/decline")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatch{})
  end

  @doc """
  Dismiss a turn-based match from the match list. The match will no longer show up in the list and will not generate notifications.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_dismiss(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def games_turn_based_matches_dismiss(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query
    }
    %{}
    |> method(:put)
    |> url("/turnbasedmatches/#{match_id}/dismiss")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Finish a turn-based match. Each player should make this call once, after all results are in. Only the player whose turn it is may make the first call to Finish, and can pass in the final match state.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.
    - :body (TurnBasedMatchResults): 

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_finish(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_finish(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/turnbasedmatches/#{match_id}/finish")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatch{})
  end

  @doc """
  Get the data for a turn-based match.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :include_match_data (Boolean): Get match data along with metadata.
    - :language (String): The preferred language to use for strings returned by this method.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_get(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"includeMatchData" => :query,
      :"language" => :query
    }
    %{}
    |> method(:get)
    |> url("/turnbasedmatches/#{match_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatch{})
  end

  @doc """
  Join a turn-based match.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_join(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_join(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query
    }
    %{}
    |> method(:put)
    |> url("/turnbasedmatches/#{match_id}/join")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatch{})
  end

  @doc """
  Leave a turn-based match when it is not the current player&#39;s turn, without canceling the match.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_leave(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_leave(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query
    }
    %{}
    |> method(:put)
    |> url("/turnbasedmatches/#{match_id}/leave")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatch{})
  end

  @doc """
  Leave a turn-based match during the current player&#39;s turn, without canceling the match.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - match_version (Integer): The version of the match being updated.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.
    - :pending_participant_id (String): The ID of another participant who should take their turn next. If not set, the match will wait for other player(s) to join via automatching; this is only valid if automatch criteria is set on the match with remaining slots for automatched players.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_leave_turn(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_leave_turn(connection, match_id, match_version, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query,
      :"pendingParticipantId" => :query
    }
    %{}
    |> method(:put)
    |> url("/turnbasedmatches/#{match_id}/leaveTurn")
    |> add_param(:query, :"matchVersion", match_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatch{})
  end

  @doc """
  Returns turn-based matches the player is or was involved in.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :include_match_data (Boolean): True if match data should be returned in the response. Note that not all data will necessarily be returned if include_match_data is true; the server may decide to only return data for some of the matches to limit download size for the client. The remainder of the data for these matches will be retrievable on request.
    - :language (String): The preferred language to use for strings returned by this method.
    - :max_completed_matches (Integer): The maximum number of completed or canceled matches to return in the response. If not set, all matches returned could be completed or canceled.
    - :max_results (Integer): The maximum number of matches to return in the response, used for paging. For any response, the actual number of matches to return may be less than the specified maxResults.
    - :page_token (String): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatchList{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatchList.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"includeMatchData" => :query,
      :"language" => :query,
      :"maxCompletedMatches" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/turnbasedmatches")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatchList{})
  end

  @doc """
  Create a rematch of a match that was previously completed, with the same participants. This can be called by only one player on a match still in their list; the player must have called Finish first. Returns the newly created match; it will be the caller&#39;s turn.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.
    - :request_id (String): A randomly generated numeric ID for each request specified by the caller. This number is used at the server to ensure that the request is handled correctly across retries.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatchRematch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_rematch(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatchRematch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_rematch(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query,
      :"requestId" => :query
    }
    %{}
    |> method(:post)
    |> url("/turnbasedmatches/#{match_id}/rematch")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatchRematch{})
  end

  @doc """
  Returns turn-based matches the player is or was involved in that changed since the last sync call, with the least recent changes coming first. Matches that should be removed from the local cache will have a status of MATCH_DELETED.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :include_match_data (Boolean): True if match data should be returned in the response. Note that not all data will necessarily be returned if include_match_data is true; the server may decide to only return data for some of the matches to limit download size for the client. The remainder of the data for these matches will be retrievable on request.
    - :language (String): The preferred language to use for strings returned by this method.
    - :max_completed_matches (Integer): The maximum number of completed or canceled matches to return in the response. If not set, all matches returned could be completed or canceled.
    - :max_results (Integer): The maximum number of matches to return in the response, used for paging. For any response, the actual number of matches to return may be less than the specified maxResults.
    - :page_token (String): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatchSync{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_sync(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatchSync.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_sync(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"includeMatchData" => :query,
      :"language" => :query,
      :"maxCompletedMatches" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/turnbasedmatches/sync")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatchSync{})
  end

  @doc """
  Commit the results of a player turn.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - match_id (String): The ID of the match.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.
    - :body (TurnBasedMatchTurn): 

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}} on success
  {:error, info} on failure
  """
  @spec games_turn_based_matches_take_turn(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t} | {:error, Tesla.Env.t}
  def games_turn_based_matches_take_turn(connection, match_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/turnbasedmatches/#{match_id}/turn")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.TurnBasedMatch{})
  end
end
