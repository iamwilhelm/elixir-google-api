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

defmodule GoogleApi.Container.V1.Model.NodePool do
  @moduledoc """
  NodePool contains the name and configuration for a cluster&#39;s node pool. Node pools are a set of nodes (i.e. VM&#39;s), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"autoscaling",
    :"config",
    :"initialNodeCount",
    :"instanceGroupUrls",
    :"management",
    :"name",
    :"selfLink",
    :"status",
    :"statusMessage",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodePool do
  import GoogleApi.Container.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"autoscaling", :struct, GoogleApi.Container.V1.Model.NodePoolAutoscaling, options)
    |> deserialize(:"config", :struct, GoogleApi.Container.V1.Model.NodeConfig, options)
    |> deserialize(:"management", :struct, GoogleApi.Container.V1.Model.NodeManagement, options)
  end
end

