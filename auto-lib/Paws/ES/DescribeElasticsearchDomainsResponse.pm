
package Paws::ES::DescribeElasticsearchDomainsResponse;
  use Moose;
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[Paws::ES::ElasticsearchDomainStatus]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeElasticsearchDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainStatusList => ArrayRef[L<Paws::ES::ElasticsearchDomainStatus>]

The status of the domains requested in the
C<DescribeElasticsearchDomains> request.




=cut

