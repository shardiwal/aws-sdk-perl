
package Paws::WAF::CreateSizeConstraintSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has SizeConstraintSet => (is => 'ro', isa => 'Paws::WAF::SizeConstraintSet');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateSizeConstraintSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the
C<CreateSizeConstraintSet> request. You can also use this value to
query the status of the request. For more information, see
GetChangeTokenStatus.



=head2 SizeConstraintSet => L<Paws::WAF::SizeConstraintSet>

A SizeConstraintSet that contains no C<SizeConstraint> objects.




=cut

1;