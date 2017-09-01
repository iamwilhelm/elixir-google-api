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

defmodule GoogleApi.Genomics.V1.Api.Referencesets do
  @moduledoc """
  API calls for all endpoints tagged `Referencesets`.
  """

  alias GoogleApi.Genomics.V1.Connection
  import GoogleApi.Genomics.V1.RequestBuilder


  @doc """
  Gets a reference set.  For the definitions of references and other genomics resources, see [Fundamentals of Google Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)  Implements [GlobalAllianceApi.getReferenceSet](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L83).

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - reference_set_id (String): The ID of the reference set.
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :access_token (String): OAuth access token.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.ReferenceSet{}} on success
  {:error, info} on failure
  """
  @spec genomics_referencesets_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Genomics.V1.Model.ReferenceSet.t} | {:error, Tesla.Env.t}
  def genomics_referencesets_get(connection, reference_set_id, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/referencesets/#{reference_set_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Genomics.V1.Model.ReferenceSet{})
  end

  @doc """
  Searches for reference sets which match the given criteria.  For the definitions of references and other genomics resources, see [Fundamentals of Google Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)  Implements [GlobalAllianceApi.searchReferenceSets](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L71)

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :access_token (String): OAuth access token.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :body (SearchReferenceSetsRequest): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.SearchReferenceSetsResponse{}} on success
  {:error, info} on failure
  """
  @spec genomics_referencesets_search(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Genomics.V1.Model.SearchReferenceSetsResponse.t} | {:error, Tesla.Env.t}
  def genomics_referencesets_search(connection, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/referencesets/search")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Genomics.V1.Model.SearchReferenceSetsResponse{})
  end
end