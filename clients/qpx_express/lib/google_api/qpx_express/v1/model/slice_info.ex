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

defmodule GoogleApi.QPXExpress.V1.Model.SliceInfo do
  @moduledoc """
  Information about a slice. A slice represents a traveller&#39;s intent, the portion of a low-fare search corresponding to a traveler&#39;s request to get between two points. One-way journeys are generally expressed using 1 slice, round-trips using 2. For example, if a traveler specifies the following trip in a user interface: | Origin | Destination | Departure Date | | BOS | LAX | March 10, 2007 | | LAX | SYD | March 17, 2007 | | SYD | BOS | March 22, 2007 | then this is a three slice trip.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"duration",
    :"kind",
    :"segment"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.QPXExpress.V1.Model.SliceInfo do
  import GoogleApi.QPXExpress.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"segment", :list, GoogleApi.QPXExpress.V1.Model.SegmentInfo, options)
  end
end

