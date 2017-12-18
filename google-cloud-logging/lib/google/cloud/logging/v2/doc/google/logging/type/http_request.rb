# Copyright 2017 Google LLC
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

module Google
  module Logging
    module Type
      # A common proto for logging HTTP requests. Only contains semantics
      # defined by the HTTP specification. Product-specific logging
      # information MUST be defined in a separate message.
      # @!attribute [rw] request_method
      #   @return [String]
      #     The request method. Examples: +"GET"+, +"HEAD"+, +"PUT"+, +"POST"+.
      # @!attribute [rw] request_url
      #   @return [String]
      #     The scheme (http, https), the host name, the path and the query
      #     portion of the URL that was requested.
      #     Example: +"http://example.com/some/info?color=red"+.
      # @!attribute [rw] request_size
      #   @return [Integer]
      #     The size of the HTTP request message in bytes, including the request
      #     headers and the request body.
      # @!attribute [rw] status
      #   @return [Integer]
      #     The response code indicating the status of response.
      #     Examples: 200, 404.
      # @!attribute [rw] response_size
      #   @return [Integer]
      #     The size of the HTTP response message sent back to the client, in bytes,
      #     including the response headers and the response body.
      # @!attribute [rw] user_agent
      #   @return [String]
      #     The user agent sent by the client. Example:
      #     +"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)"+.
      # @!attribute [rw] remote_ip
      #   @return [String]
      #     The IP address (IPv4 or IPv6) of the client that issued the HTTP
      #     request. Examples: +"192.168.1.1"+, +"FE80::0202:B3FF:FE1E:8329"+.
      # @!attribute [rw] server_ip
      #   @return [String]
      #     The IP address (IPv4 or IPv6) of the origin server that the request was
      #     sent to.
      # @!attribute [rw] referer
      #   @return [String]
      #     The referer URL of the request, as defined in
      #     [HTTP/1.1 Header Field Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
      # @!attribute [rw] latency
      #   @return [Google::Protobuf::Duration]
      #     The request processing latency on the server, from the time the request was
      #     received until the response was sent.
      # @!attribute [rw] cache_lookup
      #   @return [true, false]
      #     Whether or not a cache lookup was attempted.
      # @!attribute [rw] cache_hit
      #   @return [true, false]
      #     Whether or not an entity was served from cache
      #     (with or without validation).
      # @!attribute [rw] cache_validated_with_origin_server
      #   @return [true, false]
      #     Whether or not the response was validated with the origin server before
      #     being served from cache. This field is only meaningful if +cache_hit+ is
      #     True.
      # @!attribute [rw] cache_fill_bytes
      #   @return [Integer]
      #     The number of HTTP response bytes inserted into cache. Set only when a
      #     cache fill was attempted.
      # @!attribute [rw] protocol
      #   @return [String]
      #     Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
      class HttpRequest; end
    end
  end
end