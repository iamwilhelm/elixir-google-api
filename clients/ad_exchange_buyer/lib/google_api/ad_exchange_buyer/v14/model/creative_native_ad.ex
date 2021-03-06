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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.Creative_nativeAd do
  @moduledoc """
  If nativeAd is set, HTMLSnippet and the videoURL outside of nativeAd should not be set. (The videoURL inside nativeAd can be set.)
  """

  @derive [Poison.Encoder]
  defstruct [
    :"advertiser",
    :"appIcon",
    :"body",
    :"callToAction",
    :"clickLinkUrl",
    :"clickTrackingUrl",
    :"headline",
    :"image",
    :"impressionTrackingUrl",
    :"logo",
    :"price",
    :"starRating",
    :"store",
    :"videoURL"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Creative_nativeAd do
  import GoogleApi.AdExchangeBuyer.V14.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"appIcon", :struct, GoogleApi.AdExchangeBuyer.V14.Model.Creative_nativeAd_appIcon, options)
    |> deserialize(:"image", :struct, GoogleApi.AdExchangeBuyer.V14.Model.Creative_nativeAd_image, options)
    |> deserialize(:"logo", :struct, GoogleApi.AdExchangeBuyer.V14.Model.Creative_nativeAd_logo, options)
  end
end

