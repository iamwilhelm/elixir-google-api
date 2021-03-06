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

defmodule GoogleApi.StreetViewPublish.V1.Model.Photo do
  @moduledoc """
  Photo is used to store 360 photos along with photo metadata.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"captureTime",
    :"connections",
    :"downloadUrl",
    :"photoId",
    :"places",
    :"pose",
    :"shareLink",
    :"thumbnailUrl",
    :"uploadReference",
    :"viewCount"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.Photo do
  import GoogleApi.StreetViewPublish.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"connections", :list, GoogleApi.StreetViewPublish.V1.Model.Connection, options)
    |> deserialize(:"photoId", :struct, GoogleApi.StreetViewPublish.V1.Model.PhotoId, options)
    |> deserialize(:"places", :list, GoogleApi.StreetViewPublish.V1.Model.Place, options)
    |> deserialize(:"pose", :struct, GoogleApi.StreetViewPublish.V1.Model.Pose, options)
    |> deserialize(:"uploadReference", :struct, GoogleApi.StreetViewPublish.V1.Model.UploadRef, options)
  end
end

