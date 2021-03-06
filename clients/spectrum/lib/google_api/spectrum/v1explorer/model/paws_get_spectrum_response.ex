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

defmodule GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumResponse do
  @moduledoc """
  The response message for the available spectrum query which contains a schedule of available spectrum for the device.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"databaseChange",
    :"deviceDesc",
    :"kind",
    :"maxContiguousBwHz",
    :"maxTotalBwHz",
    :"needsSpectrumReport",
    :"rulesetInfo",
    :"spectrumSchedules",
    :"timestamp",
    :"type",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumResponse do
  import GoogleApi.Spectrum.V1explorer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"databaseChange", :struct, GoogleApi.Spectrum.V1explorer.Model.DbUpdateSpec, options)
    |> deserialize(:"deviceDesc", :struct, GoogleApi.Spectrum.V1explorer.Model.DeviceDescriptor, options)
    |> deserialize(:"rulesetInfo", :struct, GoogleApi.Spectrum.V1explorer.Model.RulesetInfo, options)
    |> deserialize(:"spectrumSchedules", :list, GoogleApi.Spectrum.V1explorer.Model.SpectrumSchedule, options)
  end
end

