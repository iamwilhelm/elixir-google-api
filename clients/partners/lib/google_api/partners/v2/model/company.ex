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

defmodule GoogleApi.Partners.V2.Model.Company do
  @moduledoc """
  A company resource in the Google Partners API. Once certified, it qualifies for being searched by advertisers.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"additionalWebsites",
    :"autoApprovalEmailDomains",
    :"badgeTier",
    :"certificationStatuses",
    :"companyTypes",
    :"convertedMinMonthlyBudget",
    :"id",
    :"industries",
    :"localizedInfos",
    :"locations",
    :"name",
    :"originalMinMonthlyBudget",
    :"primaryAdwordsManagerAccountId",
    :"primaryLanguageCode",
    :"primaryLocation",
    :"profileStatus",
    :"publicProfile",
    :"ranks",
    :"services",
    :"specializationStatus",
    :"websiteUrl"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.Company do
  import GoogleApi.Partners.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"certificationStatuses", :list, GoogleApi.Partners.V2.Model.CertificationStatus, options)
    |> deserialize(:"convertedMinMonthlyBudget", :struct, GoogleApi.Partners.V2.Model.Money, options)
    |> deserialize(:"localizedInfos", :list, GoogleApi.Partners.V2.Model.LocalizedCompanyInfo, options)
    |> deserialize(:"locations", :list, GoogleApi.Partners.V2.Model.Location, options)
    |> deserialize(:"originalMinMonthlyBudget", :struct, GoogleApi.Partners.V2.Model.Money, options)
    |> deserialize(:"primaryLocation", :struct, GoogleApi.Partners.V2.Model.Location, options)
    |> deserialize(:"publicProfile", :struct, GoogleApi.Partners.V2.Model.PublicProfile, options)
    |> deserialize(:"ranks", :list, GoogleApi.Partners.V2.Model.Rank, options)
    |> deserialize(:"specializationStatus", :list, GoogleApi.Partners.V2.Model.SpecializationStatus, options)
  end
end

