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

defmodule GoogleApi.ToolResults.V1beta3.Model.TestExecutionStep do
  @moduledoc """
  A step that represents running tests.  It accepts ant-junit xml files which will be parsed into structured test results by the service. Xml file paths are updated in order to append more files, however they can&#39;t be deleted.  Users can also add test results manually by using the test_result field.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"testIssues",
    :"testSuiteOverviews",
    :"testTiming",
    :"toolExecution"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.TestExecutionStep do
  import GoogleApi.ToolResults.V1beta3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"testIssues", :list, GoogleApi.ToolResults.V1beta3.Model.TestIssue, options)
    |> deserialize(:"testSuiteOverviews", :list, GoogleApi.ToolResults.V1beta3.Model.TestSuiteOverview, options)
    |> deserialize(:"testTiming", :struct, GoogleApi.ToolResults.V1beta3.Model.TestTiming, options)
    |> deserialize(:"toolExecution", :struct, GoogleApi.ToolResults.V1beta3.Model.ToolExecution, options)
  end
end

