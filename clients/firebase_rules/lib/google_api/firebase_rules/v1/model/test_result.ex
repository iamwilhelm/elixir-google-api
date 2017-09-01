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

defmodule GoogleApi.FirebaseRules.V1.Model.TestResult do
  @moduledoc """
  Test result message containing the state of the test as well as a description and source position for test failures.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"debugMessages",
    :"errorPosition",
    :"functionCalls",
    :"state"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.TestResult do
  import GoogleApi.FirebaseRules.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"errorPosition", :struct, GoogleApi.FirebaseRules.V1.Model.SourcePosition, options)
    |> deserialize(:"functionCalls", :list, GoogleApi.FirebaseRules.V1.Model.FunctionCall, options)
  end
end

