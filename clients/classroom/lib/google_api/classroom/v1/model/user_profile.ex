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

defmodule GoogleApi.Classroom.V1.Model.UserProfile do
  @moduledoc """
  Global information for a user.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"emailAddress",
    :"id",
    :"name",
    :"permissions",
    :"photoUrl",
    :"verifiedTeacher"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.UserProfile do
  import GoogleApi.Classroom.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"name", :struct, GoogleApi.Classroom.V1.Model.Name, options)
    |> deserialize(:"permissions", :list, GoogleApi.Classroom.V1.Model.GlobalPermission, options)
  end
end

