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

defmodule GoogleApi.Script.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Script.V1.
  """

  use Tesla

  # Add any middleware here (authentication)
  plug Tesla.Middleware.BaseUrl, "https://script.googleapis.com"
  plug Tesla.Middleware.Headers, %{"User-Agent" => "Elixir"}
  plug Tesla.Middleware.EncodeJson

  @scopes [
    "https://mail.google.com/", # Read, send, delete, and manage your email
    "https://www.google.com/calendar/feeds", # Manage your calendars
    "https://www.google.com/m8/feeds", # Manage your contacts
    "https://www.googleapis.com/auth/admin.directory.group", # View and manage the provisioning of groups on your domain
    "https://www.googleapis.com/auth/admin.directory.user", # View and manage the provisioning of users on your domain
    "https://www.googleapis.com/auth/drive", # View and manage the files in your Google Drive
    "https://www.googleapis.com/auth/forms", # View and manage your forms in Google Drive
    "https://www.googleapis.com/auth/forms.currentonly", # View and manage forms that this application has been installed in
    "https://www.googleapis.com/auth/groups", # View and manage your Google Groups
    "https://www.googleapis.com/auth/spreadsheets", # View and manage your spreadsheets in Google Drive
    "https://www.googleapis.com/auth/userinfo.email" # View your email address
  ]

  @doc """
  Configure a client connection using a provided OAuth2 token as a Bearer token

  ## Parameters

  - token (String): Bearer token

  ## Returns

  Tesla.Env.client
  """
  @spec new(String.t) :: Tesla.Env.client
  def new(token) when is_binary(token) do
    Tesla.build_client([
      {Tesla.Middleware.Headers,  %{"Authorization" => "Bearer #{token}"}}
    ])
  end

  @doc """
  Configure a client connection using a function which yields a Bearer token.

  ## Parameters

  - token_fetcher (function arity of 1): Callback which provides an OAuth2 token
    given a list of scopes

  ## Returns

  Tesla.Env.client
  """
  @spec new(((list(String.t)) -> String.t)) :: Tesla.Env.client
  def new(token_fetcher) when is_function(token_fetcher) do
    token_fetcher.(@scopes)
    |> new
  end
  @doc """
  Configure an authless client connection

  # Returns

  Tesla.Env.client
  """
  @spec new() :: Tesla.Env.client
  def new do
    Tesla.build_client([])
  end
end
