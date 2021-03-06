
package Paws::CodeDeploy::CreateDeploymentGroup;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'autoScalingGroups' );
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' , required => 1);
  has Ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]', traits => ['NameInRequest'], request_name => 'ec2TagFilters' );
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]', traits => ['NameInRequest'], request_name => 'onPremisesInstanceTagFilters' );
  has ServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleArn' , required => 1);
  has TriggerConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TriggerConfig]', traits => ['NameInRequest'], request_name => 'triggerConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroup - Arguments for method CreateDeploymentGroup on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeploymentGroup on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method CreateDeploymentGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeploymentGroup.

As an example:

  $service_obj->CreateDeploymentGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the
applicable IAM user or AWS account.



=head2 AutoScalingGroups => ArrayRef[Str]

A list of associated Auto Scaling groups.



=head2 DeploymentConfigName => Str

If specified, the deployment configuration name can be either one of
the predefined configurations provided with AWS CodeDeploy or a custom
deployment configuration that you create by calling the create
deployment configuration operation.

CodeDeployDefault.OneAtATime is the default deployment configuration.
It is used if a configuration isn't specified for the deployment or the
deployment group.

The predefined deployment configurations include the following:

=over

=item *

B<CodeDeployDefault.AllAtOnce> attempts to deploy an application
revision to as many instance as possible at once. The status of the
overall deployment will be displayed as B<Succeeded> if the application
revision is deployed to one or more of the instances. The status of the
overall deployment will be displayed as B<Failed> if the application
revision is not deployed to any of the instances. Using an example of
nine instance, CodeDeployDefault.AllAtOnce will attempt to deploy to
all nine instance at once. The overall deployment will succeed if
deployment to even a single instance is successful; it will fail only
if deployments to all nine instance fail.

=item *

B<CodeDeployDefault.HalfAtATime> deploys to up to half of the instances
at a time (with fractions rounded down). The overall deployment
succeeds if the application revision is deployed to at least half of
the instances (with fractions rounded up); otherwise, the deployment
fails. In the example of nine instances, it will deploy to up to four
instance at a time. The overall deployment succeeds if deployment to
five or more instances succeed; otherwise, the deployment fails. The
deployment may be successfully deployed to some instances even if the
overall deployment fails.

=item *

B<CodeDeployDefault.OneAtATime> deploys the application revision to
only one instance at a time.

For deployment groups that contain more than one instance:

=over

=item *

The overall deployment succeeds if the application revision is deployed
to all of the instances. The exception to this rule is if deployment to
the last instance fails, the overall deployment still succeeds. This is
because AWS CodeDeploy allows only one instance at a time to be taken
offline with the CodeDeployDefault.OneAtATime configuration.

=item *

The overall deployment fails as soon as the application revision fails
to be deployed to any but the last instance. The deployment may be
successfully deployed to some instances even if the overall deployment
fails.

=item *

In an example using nine instance, it will deploy to one instance at a
time. The overall deployment succeeds if deployment to the first eight
instance is successful; the overall deployment fails if deployment to
any of the first eight instance fails.

=back

For deployment groups that contain only one instance, the overall
deployment is successful only if deployment to the single instance is
successful

=back




=head2 B<REQUIRED> DeploymentGroupName => Str

The name of a new deployment group for the specified application.



=head2 Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]

The Amazon EC2 tags on which to filter.



=head2 OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]

The on-premises instance tags on which to filter.



=head2 B<REQUIRED> ServiceRoleArn => Str

A service role ARN that allows AWS CodeDeploy to act on the user's
behalf when interacting with AWS services.



=head2 TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]

Information about triggers to create when the deployment group is
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

