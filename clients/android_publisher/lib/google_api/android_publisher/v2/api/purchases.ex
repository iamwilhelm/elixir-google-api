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

defmodule GoogleApi.AndroidPublisher.V2.Api.Purchases do
  @moduledoc """
  API calls for all endpoints tagged `Purchases`.
  """

  alias GoogleApi.AndroidPublisher.V2.Connection
  import GoogleApi.AndroidPublisher.V2.RequestBuilder


  @doc """
  Checks the purchase and consumption status of an inapp item.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): The package name of the application the inapp product was sold in (for example, &#39;com.some.thing&#39;).
  - product_id (String): The inapp product SKU (for example, &#39;com.some.thing.inapp1&#39;).
  - token (String): The token provided to the user&#39;s device when the inapp product was purchased.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.ProductPurchase{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_purchases_products_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.ProductPurchase.t} | {:error, Tesla.Env.t}
  def androidpublisher_purchases_products_get(connection, package_name, product_id, token, opts \\ []) do
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
    |> url("/androidpublisher/v2/applications/#{package_name}/purchases/products/#{product_id}/tokens/#{token}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.ProductPurchase{})
  end

  @doc """
  Cancels a user&#39;s subscription purchase. The subscription remains valid until its expiration time.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): The package name of the application for which this subscription was purchased (for example, &#39;com.some.thing&#39;).
  - subscription_id (String): The purchased subscription ID (for example, &#39;monthly001&#39;).
  - token (String): The token provided to the user&#39;s device when the subscription was purchased.
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
  @spec androidpublisher_purchases_subscriptions_cancel(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidpublisher_purchases_subscriptions_cancel(connection, package_name, subscription_id, token, opts \\ []) do
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
    |> url("/androidpublisher/v2/applications/#{package_name}/purchases/subscriptions/#{subscription_id}/tokens/#{token}:cancel")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Defers a user&#39;s subscription purchase until a specified future expiration time.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): The package name of the application for which this subscription was purchased (for example, &#39;com.some.thing&#39;).
  - subscription_id (String): The purchased subscription ID (for example, &#39;monthly001&#39;).
  - token (String): The token provided to the user&#39;s device when the subscription was purchased.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (SubscriptionPurchasesDeferRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.SubscriptionPurchasesDeferResponse{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_purchases_subscriptions_defer(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.SubscriptionPurchasesDeferResponse.t} | {:error, Tesla.Env.t}
  def androidpublisher_purchases_subscriptions_defer(connection, package_name, subscription_id, token, opts \\ []) do
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
    |> url("/androidpublisher/v2/applications/#{package_name}/purchases/subscriptions/#{subscription_id}/tokens/#{token}:defer")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.SubscriptionPurchasesDeferResponse{})
  end

  @doc """
  Checks whether a user&#39;s subscription purchase is valid and returns its expiry time.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): The package name of the application for which this subscription was purchased (for example, &#39;com.some.thing&#39;).
  - subscription_id (String): The purchased subscription ID (for example, &#39;monthly001&#39;).
  - token (String): The token provided to the user&#39;s device when the subscription was purchased.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.SubscriptionPurchase{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_purchases_subscriptions_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.SubscriptionPurchase.t} | {:error, Tesla.Env.t}
  def androidpublisher_purchases_subscriptions_get(connection, package_name, subscription_id, token, opts \\ []) do
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
    |> url("/androidpublisher/v2/applications/#{package_name}/purchases/subscriptions/#{subscription_id}/tokens/#{token}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.SubscriptionPurchase{})
  end

  @doc """
  Refunds a user&#39;s subscription purchase, but the subscription remains valid until its expiration time and it will continue to recur.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): The package name of the application for which this subscription was purchased (for example, &#39;com.some.thing&#39;).
  - subscription_id (String): The purchased subscription ID (for example, &#39;monthly001&#39;).
  - token (String): The token provided to the user&#39;s device when the subscription was purchased.
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
  @spec androidpublisher_purchases_subscriptions_refund(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidpublisher_purchases_subscriptions_refund(connection, package_name, subscription_id, token, opts \\ []) do
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
    |> url("/androidpublisher/v2/applications/#{package_name}/purchases/subscriptions/#{subscription_id}/tokens/#{token}:refund")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Refunds and immediately revokes a user&#39;s subscription purchase. Access to the subscription will be terminated immediately and it will stop recurring.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): The package name of the application for which this subscription was purchased (for example, &#39;com.some.thing&#39;).
  - subscription_id (String): The purchased subscription ID (for example, &#39;monthly001&#39;).
  - token (String): The token provided to the user&#39;s device when the subscription was purchased.
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
  @spec androidpublisher_purchases_subscriptions_revoke(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidpublisher_purchases_subscriptions_revoke(connection, package_name, subscription_id, token, opts \\ []) do
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
    |> url("/androidpublisher/v2/applications/#{package_name}/purchases/subscriptions/#{subscription_id}/tokens/#{token}:revoke")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Lists the purchases that were cancelled, refunded or charged-back.

  ## Parameters

  - connection (GoogleApi.AndroidPublisher.V2.Connection): Connection to server
  - package_name (String): The package name of the application for which voided purchases need to be returned (for example, &#39;com.some.thing&#39;).
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :end_time (String): The time, in milliseconds since the Epoch, of the newest voided in-app product purchase that you want to see in the response. The value of this parameter cannot be greater than the current time and is ignored if a pagination token is set. Default value is current time. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.
    - :max_results (Integer): 
    - :start_index (Integer): 
    - :start_time (String): The time, in milliseconds since the Epoch, of the oldest voided in-app product purchase that you want to see in the response. The value of this parameter cannot be older than 30 days and is ignored if a pagination token is set. Default value is current time minus 30 days. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.
    - :token (String): 

  ## Returns

  {:ok, %GoogleApi.AndroidPublisher.V2.Model.VoidedPurchasesListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidpublisher_purchases_voidedpurchases_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidPublisher.V2.Model.VoidedPurchasesListResponse.t} | {:error, Tesla.Env.t}
  def androidpublisher_purchases_voidedpurchases_list(connection, package_name, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"endTime" => :query,
      :"maxResults" => :query,
      :"startIndex" => :query,
      :"startTime" => :query,
      :"token" => :query
    }
    %{}
    |> method(:get)
    |> url("/androidpublisher/v2/applications/#{package_name}/purchases/voidedpurchases")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidPublisher.V2.Model.VoidedPurchasesListResponse{})
  end
end
