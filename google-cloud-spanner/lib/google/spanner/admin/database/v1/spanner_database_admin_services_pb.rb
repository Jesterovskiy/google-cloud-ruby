# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/spanner/admin/database/v1/spanner_database_admin.proto for package 'google.spanner.admin.database.v1'
# Original file comments:
# Copyright 2017 Google Inc.
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
#

require 'grpc'
require 'google/spanner/admin/database/v1/spanner_database_admin_pb'

module Google
  module Spanner
    module Admin
      module Database
        module V1
          module DatabaseAdmin
            # Cloud Spanner Database Admin API
            #
            # The Cloud Spanner Database Admin API can be used to create, drop, and
            # list databases. It also enables updating the schema of pre-existing
            # databases.
            class Service

              include GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.spanner.admin.database.v1.DatabaseAdmin'

              # Lists Cloud Spanner databases.
              rpc :ListDatabases, ListDatabasesRequest, ListDatabasesResponse
              # Creates a new Cloud Spanner database and starts to prepare it for serving.
              # The returned [long-running operation][google.longrunning.Operation] will
              # have a name of the format `<database_name>/operations/<operation_id>` and
              # can be used to track preparation of the database. The
              # [metadata][google.longrunning.Operation.metadata] field type is
              # [CreateDatabaseMetadata][google.spanner.admin.database.v1.CreateDatabaseMetadata]. The
              # [response][google.longrunning.Operation.response] field type is
              # [Database][google.spanner.admin.database.v1.Database], if successful.
              rpc :CreateDatabase, CreateDatabaseRequest, Google::Longrunning::Operation
              # Gets the state of a Cloud Spanner database.
              rpc :GetDatabase, GetDatabaseRequest, Database
              # Updates the schema of a Cloud Spanner database by
              # creating/altering/dropping tables, columns, indexes, etc. The returned
              # [long-running operation][google.longrunning.Operation] will have a name of
              # the format `<database_name>/operations/<operation_id>` and can be used to
              # track execution of the schema change(s). The
              # [metadata][google.longrunning.Operation.metadata] field type is
              # [UpdateDatabaseDdlMetadata][google.spanner.admin.database.v1.UpdateDatabaseDdlMetadata].  The operation has no response.
              rpc :UpdateDatabaseDdl, UpdateDatabaseDdlRequest, Google::Longrunning::Operation
              # Drops (aka deletes) a Cloud Spanner database.
              rpc :DropDatabase, DropDatabaseRequest, Google::Protobuf::Empty
              # Returns the schema of a Cloud Spanner database as a list of formatted
              # DDL statements. This method does not show pending schema updates, those may
              # be queried using the [Operations][google.longrunning.Operations] API.
              rpc :GetDatabaseDdl, GetDatabaseDdlRequest, GetDatabaseDdlResponse
              # Sets the access control policy on a database resource. Replaces any
              # existing policy.
              #
              # Authorization requires `spanner.databases.setIamPolicy` permission on
              # [resource][google.iam.v1.SetIamPolicyRequest.resource].
              rpc :SetIamPolicy, Google::Iam::V1::SetIamPolicyRequest, Google::Iam::V1::Policy
              # Gets the access control policy for a database resource. Returns an empty
              # policy if a database exists but does not have a policy set.
              #
              # Authorization requires `spanner.databases.getIamPolicy` permission on
              # [resource][google.iam.v1.GetIamPolicyRequest.resource].
              rpc :GetIamPolicy, Google::Iam::V1::GetIamPolicyRequest, Google::Iam::V1::Policy
              # Returns permissions that the caller has on the specified database resource.
              #
              # Attempting this RPC on a non-existent Cloud Spanner database will result in
              # a NOT_FOUND error if the user has `spanner.databases.list` permission on
              # the containing Cloud Spanner instance. Otherwise returns an empty set of
              # permissions.
              rpc :TestIamPermissions, Google::Iam::V1::TestIamPermissionsRequest, Google::Iam::V1::TestIamPermissionsResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
