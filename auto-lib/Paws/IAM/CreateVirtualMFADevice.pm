
package Paws::IAM::CreateVirtualMFADevice;
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has VirtualMFADeviceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateVirtualMFADeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADeviceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateVirtualMFADevice - Arguments for method CreateVirtualMFADevice on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVirtualMFADevice on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method CreateVirtualMFADevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVirtualMFADevice.

As an example:

  $service_obj->CreateVirtualMFADevice(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Path => Str

The path for the virtual MFA device. For more information about paths,
see IAM Identifiers in the I<IAM User Guide>.

This parameter is optional. If it is not included, it defaults to a
slash (/).

The regex pattern for this parameter is a string of characters
consisting of either a forward slash (/) by itself or a string that
must begin and end with forward slashes, containing any ASCII character
from the ! (\u0021) thru the DEL character (\u007F), including most
punctuation characters, digits, and upper and lowercased letters.



=head2 B<REQUIRED> VirtualMFADeviceName => Str

The name of the virtual MFA device. Use with path to uniquely identify
a virtual MFA device.

The regex pattern for this parameter is a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: =,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVirtualMFADevice in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

