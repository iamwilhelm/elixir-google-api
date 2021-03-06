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

defmodule GoogleApi.CustomerInteractionHistory.V3.Model.UserInteraction do
  @moduledoc """
  The structure of UserInteractions.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"adoptionInteraction",
    :"advertiserExperienceData",
    :"casesData",
    :"chatInteraction",
    :"contactGaiaId",
    :"customer",
    :"detailedDescription",
    :"detailedDescriptionTruncated",
    :"emailInteraction",
    :"entity",
    :"gammaData",
    :"genieData",
    :"goalInteraction",
    :"googler",
    :"greenTeaData",
    :"grmData",
    :"hangoutInteraction",
    :"helpcenterData",
    :"incentiveInteraction",
    :"incentivesData",
    :"initiator",
    :"interactionOrigin",
    :"interactionType",
    :"kind",
    :"language",
    :"marketingEmailInteraction",
    :"meetingInteraction",
    :"metaType",
    :"noteInteraction",
    :"otherParticipant",
    :"partnerSearchData",
    :"phoneInteraction",
    :"sourceSystemPrimaryKey",
    :"summary",
    :"summaryTruncated",
    :"taskInteraction",
    :"timestamp",
    :"traxData",
    :"traxInteraction",
    :"userCommData"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CustomerInteractionHistory.V3.Model.UserInteraction do
  import GoogleApi.CustomerInteractionHistory.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"adoptionInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.AdoptionInteraction, options)
    |> deserialize(:"advertiserExperienceData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.AdvertiserExperienceData, options)
    |> deserialize(:"casesData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.CasesData, options)
    |> deserialize(:"chatInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.ChatInteraction, options)
    |> deserialize(:"customer", :list, GoogleApi.CustomerInteractionHistory.V3.Model.Participant, options)
    |> deserialize(:"emailInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.EmailInteraction, options)
    |> deserialize(:"entity", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.Entity, options)
    |> deserialize(:"gammaData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.GammaData, options)
    |> deserialize(:"genieData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.GenieData, options)
    |> deserialize(:"goalInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.GoalInteraction, options)
    |> deserialize(:"googler", :list, GoogleApi.CustomerInteractionHistory.V3.Model.Participant, options)
    |> deserialize(:"greenTeaData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.GreenTeaData, options)
    |> deserialize(:"grmData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.GrmData, options)
    |> deserialize(:"hangoutInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.HangoutInteraction, options)
    |> deserialize(:"helpcenterData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.HelpcenterData, options)
    |> deserialize(:"incentiveInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.IncentiveInteraction, options)
    |> deserialize(:"incentivesData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.IncentivesData, options)
    |> deserialize(:"initiator", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.Participant, options)
    |> deserialize(:"marketingEmailInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.MarketingEmailInteraction, options)
    |> deserialize(:"meetingInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.MeetingInteraction, options)
    |> deserialize(:"noteInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.NoteInteraction, options)
    |> deserialize(:"otherParticipant", :list, GoogleApi.CustomerInteractionHistory.V3.Model.Participant, options)
    |> deserialize(:"partnerSearchData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.PartnerSearchData, options)
    |> deserialize(:"phoneInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.PhoneInteraction, options)
    |> deserialize(:"taskInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.TaskInteraction, options)
    |> deserialize(:"traxData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.TraxData, options)
    |> deserialize(:"traxInteraction", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.TraxInteraction, options)
    |> deserialize(:"userCommData", :struct, GoogleApi.CustomerInteractionHistory.V3.Model.UserCommData, options)
  end
end

