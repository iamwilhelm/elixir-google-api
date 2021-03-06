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

defmodule GoogleApi.Blogger.V3.Api.Posts do
  @moduledoc """
  API calls for all endpoints tagged `Posts`.
  """

  alias GoogleApi.Blogger.V3.Connection
  import GoogleApi.Blogger.V3.RequestBuilder


  @doc """
  Delete a post by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the Blog.
  - post_id (String): The ID of the Post.
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
  @spec blogger_posts_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def blogger_posts_delete(connection, blog_id, post_id, opts \\ []) do
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
    |> url("/blogs/#{blog_id}/posts/#{post_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get a post by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): ID of the blog to fetch the post from.
  - post_id (String): The ID of the post
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :fetch_body (Boolean): Whether the body content of the post is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
    - :fetch_images (Boolean): Whether image URL metadata for each post is included (default: false).
    - :max_comments (Integer): Maximum number of comments to pull back on a post.
    - :view (String): Access level with which to view the returned result. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Post.t} | {:error, Tesla.Env.t}
  def blogger_posts_get(connection, blog_id, post_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"fetchBody" => :query,
      :"fetchImages" => :query,
      :"maxComments" => :query,
      :"view" => :query
    }
    %{}
    |> method(:get)
    |> url("/blogs/#{blog_id}/posts/#{post_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Post{})
  end

  @doc """
  Retrieve a Post by Path.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): ID of the blog to fetch the post from.
  - path (String): Path of the Post to retrieve.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_comments (Integer): Maximum number of comments to pull back on a post.
    - :view (String): Access level with which to view the returned result. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_get_by_path(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Post.t} | {:error, Tesla.Env.t}
  def blogger_posts_get_by_path(connection, blog_id, path, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxComments" => :query,
      :"view" => :query
    }
    %{}
    |> method(:get)
    |> url("/blogs/#{blog_id}/posts/bypath")
    |> add_param(:query, :"path", path)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Post{})
  end

  @doc """
  Add a post.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): ID of the blog to add the post to.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :fetch_body (Boolean): Whether the body content of the post is included with the result (default: true).
    - :fetch_images (Boolean): Whether image URL metadata for each post is included in the returned result (default: false).
    - :is_draft (Boolean): Whether to create the post as a draft (default: false).
    - :body (Post): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Post.t} | {:error, Tesla.Env.t}
  def blogger_posts_insert(connection, blog_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"fetchBody" => :query,
      :"fetchImages" => :query,
      :"isDraft" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/blogs/#{blog_id}/posts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Post{})
  end

  @doc """
  Retrieves a list of posts, possibly filtered.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): ID of the blog to fetch posts from.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :end_date (String): Latest post date to fetch, a date-time with RFC 3339 formatting.
    - :fetch_bodies (Boolean): Whether the body content of posts is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
    - :fetch_images (Boolean): Whether image URL metadata for each post is included.
    - :labels (String): Comma-separated list of labels to search for.
    - :max_results (Integer): Maximum number of posts to fetch.
    - :order_by (String): Sort search results
    - :page_token (String): Continuation token if the request is paged.
    - :start_date (String): Earliest post date to fetch, a date-time with RFC 3339 formatting.
    - :status (List[String]): Statuses to include in the results.
    - :view (String): Access level with which to view the returned result. Note that some fields require escalated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.PostList{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.PostList.t} | {:error, Tesla.Env.t}
  def blogger_posts_list(connection, blog_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"endDate" => :query,
      :"fetchBodies" => :query,
      :"fetchImages" => :query,
      :"labels" => :query,
      :"maxResults" => :query,
      :"orderBy" => :query,
      :"pageToken" => :query,
      :"startDate" => :query,
      :"status" => :query,
      :"view" => :query
    }
    %{}
    |> method(:get)
    |> url("/blogs/#{blog_id}/posts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.PostList{})
  end

  @doc """
  Update a post. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the Blog.
  - post_id (String): The ID of the Post.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :fetch_body (Boolean): Whether the body content of the post is included with the result (default: true).
    - :fetch_images (Boolean): Whether image URL metadata for each post is included in the returned result (default: false).
    - :max_comments (Integer): Maximum number of comments to retrieve with the returned post.
    - :publish (Boolean): Whether a publish action should be performed when the post is updated (default: false).
    - :revert (Boolean): Whether a revert action should be performed when the post is updated (default: false).
    - :body (Post): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Post.t} | {:error, Tesla.Env.t}
  def blogger_posts_patch(connection, blog_id, post_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"fetchBody" => :query,
      :"fetchImages" => :query,
      :"maxComments" => :query,
      :"publish" => :query,
      :"revert" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/blogs/#{blog_id}/posts/#{post_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Post{})
  end

  @doc """
  Publishes a draft post, optionally at the specific time of the given publishDate parameter.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the Blog.
  - post_id (String): The ID of the Post.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :publish_date (String): Optional date and time to schedule the publishing of the Blog. If no publishDate parameter is given, the post is either published at the a previously saved schedule date (if present), or the current time. If a future date is given, the post will be scheduled to be published.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_publish(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Post.t} | {:error, Tesla.Env.t}
  def blogger_posts_publish(connection, blog_id, post_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"publishDate" => :query
    }
    %{}
    |> method(:post)
    |> url("/blogs/#{blog_id}/posts/#{post_id}/publish")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Post{})
  end

  @doc """
  Revert a published or scheduled post to draft state.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the Blog.
  - post_id (String): The ID of the Post.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_revert(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Post.t} | {:error, Tesla.Env.t}
  def blogger_posts_revert(connection, blog_id, post_id, opts \\ []) do
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
    |> url("/blogs/#{blog_id}/posts/#{post_id}/revert")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Post{})
  end

  @doc """
  Search for a post.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): ID of the blog to fetch the post from.
  - q (String): Query terms to search this blog for matching posts.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :fetch_bodies (Boolean): Whether the body content of posts is included (default: true). This should be set to false when the post bodies are not required, to help minimize traffic.
    - :order_by (String): Sort search results

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.PostList{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_search(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.PostList.t} | {:error, Tesla.Env.t}
  def blogger_posts_search(connection, blog_id, q, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"fetchBodies" => :query,
      :"orderBy" => :query
    }
    %{}
    |> method(:get)
    |> url("/blogs/#{blog_id}/posts/search")
    |> add_param(:query, :"q", q)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.PostList{})
  end

  @doc """
  Update a post.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the Blog.
  - post_id (String): The ID of the Post.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :fetch_body (Boolean): Whether the body content of the post is included with the result (default: true).
    - :fetch_images (Boolean): Whether image URL metadata for each post is included in the returned result (default: false).
    - :max_comments (Integer): Maximum number of comments to retrieve with the returned post.
    - :publish (Boolean): Whether a publish action should be performed when the post is updated (default: false).
    - :revert (Boolean): Whether a revert action should be performed when the post is updated (default: false).
    - :body (Post): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Post{}} on success
  {:error, info} on failure
  """
  @spec blogger_posts_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Post.t} | {:error, Tesla.Env.t}
  def blogger_posts_update(connection, blog_id, post_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"fetchBody" => :query,
      :"fetchImages" => :query,
      :"maxComments" => :query,
      :"publish" => :query,
      :"revert" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/blogs/#{blog_id}/posts/#{post_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Post{})
  end
end
