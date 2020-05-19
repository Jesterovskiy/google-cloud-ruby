# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/tasks/v2/cloud_tasks"

class ::Google::Cloud::Tasks::V2::CloudTasks::ClientPathsTest < Minitest::Test
  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Tasks::V2::CloudTasks::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_queue_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Tasks::V2::CloudTasks::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.queue_path project: "value0", location: "value1", queue: "value2"
      assert_equal "projects/value0/locations/value1/queues/value2", path
    end
  end

  def test_task_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Tasks::V2::CloudTasks::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.task_path project: "value0", location: "value1", queue: "value2", task: "value3"
      assert_equal "projects/value0/locations/value1/queues/value2/tasks/value3", path
    end
  end
end
