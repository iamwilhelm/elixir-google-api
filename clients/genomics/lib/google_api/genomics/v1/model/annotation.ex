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

defmodule GoogleApi.Genomics.V1.Model.Annotation do
  @moduledoc """
  An annotation describes a region of reference genome. The value of an annotation may be one of several canonical types, supplemented by arbitrary info tags. An annotation is not inherently associated with a specific sample or individual (though a client could choose to use annotations in this way). Example canonical annotation types are &#x60;GENE&#x60; and &#x60;VARIANT&#x60;.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"info",
    :"annotationSetId",
    :"end",
    :"id",
    :"name",
    :"referenceId",
    :"referenceName",
    :"reverseStrand",
    :"start",
    :"transcript",
    :"type",
    :"variant"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.Annotation do
  import GoogleApi.Genomics.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"transcript", :struct, GoogleApi.Genomics.V1.Model.Transcript, options)
    |> deserialize(:"variant", :struct, GoogleApi.Genomics.V1.Model.VariantAnnotation, options)
  end
end

