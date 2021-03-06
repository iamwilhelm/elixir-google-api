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

defmodule GoogleApi.Dataflow.V1b3.Model.ParallelInstruction do
  @moduledoc """
  Describes a particular operation comprising a MapTask.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"flatten",
    :"name",
    :"originalName",
    :"outputs",
    :"parDo",
    :"partialGroupByKey",
    :"read",
    :"systemName",
    :"write"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ParallelInstruction do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"flatten", :struct, GoogleApi.Dataflow.V1b3.Model.FlattenInstruction, options)
    |> deserialize(:"outputs", :list, GoogleApi.Dataflow.V1b3.Model.InstructionOutput, options)
    |> deserialize(:"parDo", :struct, GoogleApi.Dataflow.V1b3.Model.ParDoInstruction, options)
    |> deserialize(:"partialGroupByKey", :struct, GoogleApi.Dataflow.V1b3.Model.PartialGroupByKeyInstruction, options)
    |> deserialize(:"read", :struct, GoogleApi.Dataflow.V1b3.Model.ReadInstruction, options)
    |> deserialize(:"write", :struct, GoogleApi.Dataflow.V1b3.Model.WriteInstruction, options)
  end
end

