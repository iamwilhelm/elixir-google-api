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

defmodule GoogleApi.PlayMoviesPartner.V1.Model.StoreInfo do
  @moduledoc """
  Information about a playable sequence (video) associated with an Edit and available at the Google Play Store.  Internally, each StoreInfo is uniquely identified by a &#x60;video_id&#x60; and &#x60;country&#x60;.  Externally, Title-level EIDR or Edit-level EIDR, if provided, can also be used to identify a specific title or edit in a country.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"audioTracks",
    :"country",
    :"editLevelEidr",
    :"episodeNumber",
    :"hasAudio51",
    :"hasEstOffer",
    :"hasHdOffer",
    :"hasInfoCards",
    :"hasSdOffer",
    :"hasVodOffer",
    :"liveTime",
    :"mid",
    :"name",
    :"pphNames",
    :"seasonId",
    :"seasonName",
    :"seasonNumber",
    :"showId",
    :"showName",
    :"studioName",
    :"subtitles",
    :"titleLevelEidr",
    :"trailerId",
    :"type",
    :"videoId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.PlayMoviesPartner.V1.Model.StoreInfo do
  def decode(value, _options) do
    value
  end
end

