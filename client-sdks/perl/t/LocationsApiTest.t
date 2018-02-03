=begin comment

Direct Freight API

In order to use the Direct Freight API please first contact us to get an API Token. This token needs to be sent as a HTTP header argument in every request to our API.  api-token=\"SECRET KEY\"  Please keep your api-token a secret. If the token is compromised please contact us to get a new one.  This api token authenticates your application and gives it access to the API.  The API token should not be confused with the end-user-token. That token is given to you via the end_user_authentications endpoint when the user logs in. This token is needed in order to use certain features, and get certain sensitive information.  Both Tokens are stateless, and delivered via the HTTP headers.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::LocationsApi');

my $api = WWW::SwaggerClient::LocationsApi->new();
isa_ok($api, 'WWW::SwaggerClient::LocationsApi');

#
# location_distance_get test
#
{
    my $origin_city = undef; # replace NULL with a proper value
    my $origin_state = undef; # replace NULL with a proper value
    my $destination_city = undef; # replace NULL with a proper value
    my $destination_state = undef; # replace NULL with a proper value
    my $result = $api->location_distance_get(origin_city => $origin_city, origin_state => $origin_state, destination_city => $destination_city, destination_state => $destination_state);
}

#
# locations_closest_city_get test
#
{
    my $latitude = undef; # replace NULL with a proper value
    my $longitude = undef; # replace NULL with a proper value
    my $result = $api->locations_closest_city_get(latitude => $latitude, longitude => $longitude);
}

#
# locations_partial_match_get test
#
{
    my $term = undef; # replace NULL with a proper value
    my $search_type = undef; # replace NULL with a proper value
    my $result = $api->locations_partial_match_get(term => $term, search_type => $search_type);
}


1;