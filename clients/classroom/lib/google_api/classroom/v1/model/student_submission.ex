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

defmodule GoogleApi.Classroom.V1.Model.StudentSubmission do
  @moduledoc """
  Student submission for course work.  StudentSubmission items are generated when a CourseWork item is created.  StudentSubmissions that have never been accessed (i.e. with &#x60;state&#x60; &#x3D; NEW) may not have a creation time or update time.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"alternateLink",
    :"assignedGrade",
    :"assignmentSubmission",
    :"associatedWithDeveloper",
    :"courseId",
    :"courseWorkId",
    :"courseWorkType",
    :"creationTime",
    :"draftGrade",
    :"id",
    :"late",
    :"multipleChoiceSubmission",
    :"shortAnswerSubmission",
    :"state",
    :"submissionHistory",
    :"updateTime",
    :"userId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.StudentSubmission do
  import GoogleApi.Classroom.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"assignmentSubmission", :struct, GoogleApi.Classroom.V1.Model.AssignmentSubmission, options)
    |> deserialize(:"multipleChoiceSubmission", :struct, GoogleApi.Classroom.V1.Model.MultipleChoiceSubmission, options)
    |> deserialize(:"shortAnswerSubmission", :struct, GoogleApi.Classroom.V1.Model.ShortAnswerSubmission, options)
    |> deserialize(:"submissionHistory", :list, GoogleApi.Classroom.V1.Model.SubmissionHistory, options)
  end
end

