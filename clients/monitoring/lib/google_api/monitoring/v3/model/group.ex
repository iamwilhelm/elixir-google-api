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

defmodule GoogleApi.Monitoring.V3.Model.Group do
  @moduledoc """
  The description of a dynamic collection of monitored resources. Each group has a filter that is matched against monitored resources and their associated metadata. If a group&#39;s filter matches an available monitored resource, then that resource is a member of that group. Groups can contain any number of monitored resources, and each monitored resource can be a member of any number of groups.Groups can be nested in parent-child hierarchies. The parentName field identifies an optional parent for each group. If a group has a parent, then the only monitored resources available to be matched by the group&#39;s filter are the resources contained in the parent group. In other words, a group contains the monitored resources that match its filter and the filters of all the group&#39;s ancestors. A group without a parent can contain any monitored resource.For example, consider an infrastructure running a set of instances with two user-defined tags: \&quot;environment\&quot; and \&quot;role\&quot;. A parent group has a filter, environment&#x3D;\&quot;production\&quot;. A child of that parent group has a filter, role&#x3D;\&quot;transcoder\&quot;. The parent group contains all instances in the production environment, regardless of their roles. The child group contains instances that have the transcoder role and are in the production environment.The monitored resources contained in a group can change at any moment, depending on what resources exist and what filters are associated with the group and its ancestors.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayName",
    :"filter",
    :"isCluster",
    :"name",
    :"parentName"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Group do
  def decode(value, _options) do
    value
  end
end

