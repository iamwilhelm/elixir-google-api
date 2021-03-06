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

defmodule GoogleApi.Datastore.V1.Model.Value do
  @moduledoc """
  A message that can hold any of the supported value types and associated metadata.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"arrayValue",
    :"blobValue",
    :"booleanValue",
    :"doubleValue",
    :"entityValue",
    :"excludeFromIndexes",
    :"geoPointValue",
    :"integerValue",
    :"keyValue",
    :"meaning",
    :"nullValue",
    :"stringValue",
    :"timestampValue"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.Value do
  import GoogleApi.Datastore.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"arrayValue", :struct, GoogleApi.Datastore.V1.Model.ArrayValue, options)
    |> deserialize(:"entityValue", :struct, GoogleApi.Datastore.V1.Model.Entity, options)
    |> deserialize(:"geoPointValue", :struct, GoogleApi.Datastore.V1.Model.LatLng, options)
    |> deserialize(:"keyValue", :struct, GoogleApi.Datastore.V1.Model.Key, options)
  end
end

