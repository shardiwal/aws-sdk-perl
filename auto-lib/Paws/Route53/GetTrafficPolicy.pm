
package Paws::Route53::GetTrafficPolicy;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);
  has Version => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'Version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrafficPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicy/{Id}/{Version}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetTrafficPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetTrafficPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the traffic policy that you want to get information about.



=head2 B<REQUIRED> Version => Int

The version number of the traffic policy that you want to get
information about.




=cut

