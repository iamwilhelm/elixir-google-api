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

defmodule GoogleApi.Partners.V2.Model.Location do
  @moduledoc """
  A location with address and geographic coordinates. May optionally contain a detailed (multi-field) version of the address.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"address",
    :"addressLine",
    :"administrativeArea",
    :"dependentLocality",
    :"languageCode",
    :"latLng",
    :"locality",
    :"postalCode",
    :"regionCode",
    :"sortingCode"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.Location do
  import GoogleApi.Partners.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"latLng", :struct, GoogleApi.Partners.V2.Model.LatLng, options)
  end
end

