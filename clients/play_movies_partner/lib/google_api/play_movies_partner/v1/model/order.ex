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

defmodule GoogleApi.PlayMoviesPartner.V1.Model.Order do
  @moduledoc """
  An Order tracks the fulfillment of an Edit when delivered using the legacy, non-component-based delivery.  Each Order is uniquely identified by an &#x60;order_id&#x60;, which is generated by Google.  Externally, Orders can also be identified by partners using its &#x60;custom_id&#x60; (when provided).
  """

  @derive [Poison.Encoder]
  defstruct [
    :"approvedTime",
    :"channelId",
    :"channelName",
    :"countries",
    :"customId",
    :"earliestAvailStartTime",
    :"episodeName",
    :"legacyPriority",
    :"name",
    :"normalizedPriority",
    :"orderId",
    :"orderedTime",
    :"pphName",
    :"priority",
    :"receivedTime",
    :"rejectionNote",
    :"seasonName",
    :"showName",
    :"status",
    :"statusDetail",
    :"studioName",
    :"type",
    :"videoId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.PlayMoviesPartner.V1.Model.Order do
  def decode(value, _options) do
    value
  end
end

