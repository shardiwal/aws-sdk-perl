package Paws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes {
  use Moose;
  has initiatedEventId => (is => 'ro', isa => 'Int', required => 1);
  has startedEventId => (is => 'ro', isa => 'Int', required => 1);
  has timeoutType => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', required => 1);
}
1;
