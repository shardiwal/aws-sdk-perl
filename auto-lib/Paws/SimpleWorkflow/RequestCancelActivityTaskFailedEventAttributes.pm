package Paws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes {
  use Moose;
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
}
1;
