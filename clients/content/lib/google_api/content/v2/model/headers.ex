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

defmodule GoogleApi.Content.V2.Model.Headers do
  @moduledoc """
  A non-empty list of row or column headers for a table. Exactly one of prices, weights, numItems, postalCodeGroupNames, or locations must be set.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"locations",
    :"numberOfItems",
    :"postalCodeGroupNames",
    :"prices",
    :"weights"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Headers do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"locations", :list, GoogleApi.Content.V2.Model.LocationIdSet, options)
    |> deserialize(:"prices", :list, GoogleApi.Content.V2.Model.Price, options)
    |> deserialize(:"weights", :list, GoogleApi.Content.V2.Model.Weight, options)
  end
end

