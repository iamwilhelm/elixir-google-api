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

defmodule GoogleApi.DoubleClickSearch.V2.Model.Conversion do
  @moduledoc """
  A conversion containing data relevant to DoubleClick Search.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"adGroupId",
    :"adId",
    :"advertiserId",
    :"agencyId",
    :"attributionModel",
    :"campaignId",
    :"channel",
    :"clickId",
    :"conversionId",
    :"conversionModifiedTimestamp",
    :"conversionTimestamp",
    :"countMillis",
    :"criterionId",
    :"currencyCode",
    :"customDimension",
    :"customMetric",
    :"deviceType",
    :"dsConversionId",
    :"engineAccountId",
    :"floodlightOrderId",
    :"inventoryAccountId",
    :"productCountry",
    :"productGroupId",
    :"productId",
    :"productLanguage",
    :"quantityMillis",
    :"revenueMicros",
    :"segmentationId",
    :"segmentationName",
    :"segmentationType",
    :"state",
    :"storeId",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.Conversion do
  import GoogleApi.DoubleClickSearch.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"customDimension", :list, GoogleApi.DoubleClickSearch.V2.Model.CustomDimension, options)
    |> deserialize(:"customMetric", :list, GoogleApi.DoubleClickSearch.V2.Model.CustomMetric, options)
  end
end

