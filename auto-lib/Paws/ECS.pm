
use Paws::API;


package Paws::ECS {
  use Moose;
  sub service { 'ecs' }
  sub version { '2014-11-13' }
  sub target_prefix { 'AmazonEC2ContainerServiceV20141113' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterContainerInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeregisterContainerInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeregisterTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContainerInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeContainerInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DiscoverPollEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DiscoverPollEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContainerInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListContainerInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskDefinitionFamilies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTaskDefinitionFamilies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTaskDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterContainerInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RegisterContainerInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RegisterTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RunTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::StartTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::StopTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitContainerStateChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::SubmitContainerStateChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitTaskStateChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::SubmitTaskStateChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS - Perl Interface to AWS Amazon EC2 Container Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon EC2 Container Service (Amazon ECS) is a highly scalable, fast,
container management service that makes it easy to run, stop, and
manage Docker containers on a cluster of Amazon EC2 instances. Amazon
ECS lets you launch and stop container-enabled applications with simple
API calls, allows you to get the state of your cluster from a
centralized service, and gives you access to many familiar Amazon EC2
features like security groups, Amazon EBS volumes, and IAM roles.

You can use Amazon ECS to schedule the placement of containers across
your cluster based on your resource needs, isolation policies, and
availability requirements. Amazon EC2 Container Service eliminates the
need for you to operate your own cluster management and configuration
management systems or worry about scaling your management
infrastructure.










=head1 METHODS

=head2 CreateCluster()

  Arguments described in: L<Paws::ECS::CreateCluster>

  Returns: L<Paws::ECS::CreateClusterResponse>

  

Creates a new Amazon ECS cluster. By default, your account will receive
a C<default> cluster when you launch your first container instance.
However, you can create your own cluster with a unique name with the
C<CreateCluster> action.

During the preview, each account is limited to two clusters.











=head2 DeleteCluster()

  Arguments described in: L<Paws::ECS::DeleteCluster>

  Returns: L<Paws::ECS::DeleteClusterResponse>

  

Deletes the specified cluster. You must deregister all container
instances from this cluster before you may delete it. You can list the
container instances in a cluster with ListContainerInstances and
deregister them with DeregisterContainerInstance.











=head2 DeregisterContainerInstance()

  Arguments described in: L<Paws::ECS::DeregisterContainerInstance>

  Returns: L<Paws::ECS::DeregisterContainerInstanceResponse>

  

Deregisters an Amazon ECS container instance from the specified
cluster. This instance will no longer be available to run tasks.











=head2 DeregisterTaskDefinition()

  Arguments described in: L<Paws::ECS::DeregisterTaskDefinition>

  Returns: L<Paws::ECS::DeregisterTaskDefinitionResponse>

  

NOT YET IMPLEMENTED.

Deregisters the specified task definition. You will no longer be able
to run tasks from this definition after deregistration.











=head2 DescribeClusters()

  Arguments described in: L<Paws::ECS::DescribeClusters>

  Returns: L<Paws::ECS::DescribeClustersResponse>

  

Describes one or more of your clusters.











=head2 DescribeContainerInstances()

  Arguments described in: L<Paws::ECS::DescribeContainerInstances>

  Returns: L<Paws::ECS::DescribeContainerInstancesResponse>

  

Describes Amazon EC2 Container Service container instances. Returns
metadata about registered and remaining resources on each container
instance requested.











=head2 DescribeTaskDefinition()

  Arguments described in: L<Paws::ECS::DescribeTaskDefinition>

  Returns: L<Paws::ECS::DescribeTaskDefinitionResponse>

  

Describes a task definition. You can specify a C<family> and
C<revision> to find information on a specific task definition, or you
can simply specify the family to find the latest revision in that
family.











=head2 DescribeTasks()

  Arguments described in: L<Paws::ECS::DescribeTasks>

  Returns: L<Paws::ECS::DescribeTasksResponse>

  

Describes a specified task or tasks.











=head2 DiscoverPollEndpoint()

  Arguments described in: L<Paws::ECS::DiscoverPollEndpoint>

  Returns: L<Paws::ECS::DiscoverPollEndpointResponse>

  

This action is only used by the Amazon EC2 Container Service agent, and
it is not intended for use outside of the agent.

Returns an endpoint for the Amazon EC2 Container Service agent to poll
for updates.











=head2 ListClusters()

  Arguments described in: L<Paws::ECS::ListClusters>

  Returns: L<Paws::ECS::ListClustersResponse>

  

Returns a list of existing clusters.











=head2 ListContainerInstances()

  Arguments described in: L<Paws::ECS::ListContainerInstances>

  Returns: L<Paws::ECS::ListContainerInstancesResponse>

  

Returns a list of container instances in a specified cluster.











=head2 ListTaskDefinitionFamilies()

  Arguments described in: L<Paws::ECS::ListTaskDefinitionFamilies>

  Returns: L<Paws::ECS::ListTaskDefinitionFamiliesResponse>

  

Returns a list of task definition families that are registered to your
account. You can filter the results with the C<familyPrefix> parameter.











=head2 ListTaskDefinitions()

  Arguments described in: L<Paws::ECS::ListTaskDefinitions>

  Returns: L<Paws::ECS::ListTaskDefinitionsResponse>

  

Returns a list of task definitions that are registered to your account.
You can filter the results by family name with the C<familyPrefix>
parameter.











=head2 ListTasks()

  Arguments described in: L<Paws::ECS::ListTasks>

  Returns: L<Paws::ECS::ListTasksResponse>

  

Returns a list of tasks for a specified cluster. You can filter the
results by family name or by a particular container instance with the
C<family> and C<containerInstance> parameters.











=head2 RegisterContainerInstance()

  Arguments described in: L<Paws::ECS::RegisterContainerInstance>

  Returns: L<Paws::ECS::RegisterContainerInstanceResponse>

  

This action is only used by the Amazon EC2 Container Service agent, and
it is not intended for use outside of the agent.

Registers an Amazon EC2 instance into the specified cluster. This
instance will become available to place containers on.











=head2 RegisterTaskDefinition()

  Arguments described in: L<Paws::ECS::RegisterTaskDefinition>

  Returns: L<Paws::ECS::RegisterTaskDefinitionResponse>

  

Registers a new task definition from the supplied C<family> and
C<containerDefinitions>. Optionally, you can add data volumes to your
containers with the C<volumes> parameter. For more information on task
definition parameters and defaults, see Amazon ECS Task Definitions in
the I<Amazon EC2 Container Service Developer Guide>.











=head2 RunTask()

  Arguments described in: L<Paws::ECS::RunTask>

  Returns: L<Paws::ECS::RunTaskResponse>

  

Start a task using random placement and the default Amazon ECS
scheduler. If you want to use your own scheduler or place a task on a
specific container instance, use C<StartTask> instead.











=head2 StartTask()

  Arguments described in: L<Paws::ECS::StartTask>

  Returns: L<Paws::ECS::StartTaskResponse>

  

Starts a new task from the specified task definition on the specified
container instance or instances. If you want to use the default Amazon
ECS scheduler to place your task, use C<RunTask> instead.











=head2 StopTask()

  Arguments described in: L<Paws::ECS::StopTask>

  Returns: L<Paws::ECS::StopTaskResponse>

  

Stops a running task.











=head2 SubmitContainerStateChange()

  Arguments described in: L<Paws::ECS::SubmitContainerStateChange>

  Returns: L<Paws::ECS::SubmitContainerStateChangeResponse>

  

This action is only used by the Amazon EC2 Container Service agent, and
it is not intended for use outside of the agent.

Sent to acknowledge that a container changed states.











=head2 SubmitTaskStateChange()

  Arguments described in: L<Paws::ECS::SubmitTaskStateChange>

  Returns: L<Paws::ECS::SubmitTaskStateChangeResponse>

  

This action is only used by the Amazon EC2 Container Service agent, and
it is not intended for use outside of the agent.

Sent to acknowledge that a task changed states.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

