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

defmodule GoogleApi.Genomics.V1.Model.CallSet do
  @moduledoc """
  A call set is a collection of variant calls, typically for one sample. It belongs to a variant set.  For more genomics resource definitions, see [Fundamentals of Google Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  """

  @derive [Poison.Encoder]
  defstruct [
    :"info",
    :"created",
    :"id",
    :"name",
    :"sampleId",
    :"variantSetIds"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.CallSet do
  def decode(value, _options) do
    value
  end
end

