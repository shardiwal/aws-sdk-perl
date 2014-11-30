
package Paws::ElasticTranscoder::UpdatePipelineStatus {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipelineStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::UpdatePipelineStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdatePipelineStatusResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineStatus - Arguments for method UpdatePipelineStatus on Paws::ElasticTranscoder

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipelineStatus on the 
Amazon Elastic Transcoder service. Use the attributes of this class
as arguments to method UpdatePipelineStatus.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipelineStatus.

As an example:

  $service_obj->UpdatePipelineStatus(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> Id => Str

  

The identifier of the pipeline to update.










=head2 B<REQUIRED> Status => Str

  

The desired status of the pipeline:

=over

=item * C<Active>: The pipeline is processing jobs.

=item * C<Paused>: The pipeline is not currently processing jobs.

=back












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for UpdatePipelineStatus in Paws::ElasticTranscoder

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
