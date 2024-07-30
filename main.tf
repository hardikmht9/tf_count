resource "newrelic_alert_policy" "policyv2" {
  name = var.name_policy
}

resource "newrelic_nrql_alert_condition" "conditions" {
 
  policy_id  = newrelic_alert_policy.policyv2.id
  count                   = length( var.conditions)
#   account_id                     =        
  # policy_id                    = newrelic_alert_policy.policyNN.id

  type                           = var.conditions[count.index].type
  name                           = var.conditions[count.index].name
  description                    = var.conditions[count.index].description
  runbook_url                    = var.conditions[count.index].runbook_url
  enabled                        = var.conditions[count.index].enabled
  violation_time_limit_seconds   =var.conditions[count.index].violation_time_limit_seconds
  fill_option                    = var.conditions[count.index].fill_option
  fill_value                     = var.conditions[count.index].fill_value
  aggregation_window             = var.conditions[count.index].aggregation_window
  aggregation_method             = var.conditions[count.index].aggregation_method
  aggregation_delay              = var.conditions[count.index].aggregation_delay
  expiration_duration            = var.conditions[count.index].expiration_duration
  open_violation_on_expiration   = var.conditions[count.index].open_violation_on_expiration
  close_violations_on_expiration = var.conditions[count.index].close_violations_on_expiration
  slide_by                       = var.conditions[count.index].slide_by


  nrql {
    query = var.conditions[count.index].query
  }

  critical {
    operator              = var.conditions[count.index].operator
    threshold             = var.conditions[count.index].threshold
    threshold_duration    = var.conditions[count.index].threshold_duration
    threshold_occurrences = var.conditions[count.index].threshold_occurrences
  }

  warning {
    operator              = var.conditions[count.index].warning_operator
    threshold             = var.conditions[count.index].warning_threshold
    threshold_duration    = var.conditions[count.index].warning_threshold_duration
    threshold_occurrences = var.conditions[count.index].warning_threshold_occurrences
  }
}

////


resource "newrelic_notification_destination" "destination" {
account_id = 4438271

name = "email-example"
type = "EMAIL"
 
property {
key = "email"
value = "hardikmehta99999@gmail.com"
}
}
 
resource "newrelic_notification_channel" "channel" {
account_id = 4438271
name = "email-example"
type = "EMAIL"
destination_id = newrelic_notification_destination.destination.id
product = "IINT"
 
property {
key = "subject"
value = "New Subject Title"
}
 
property {
key = "customDetailsEmail"
value = "issue id - {{issueId}}"
}
}
resource "newrelic_workflow" "workflow" {
name = "workflow-demo"
muting_rules_handling = "NOTIFY_ALL_ISSUES"
 
issues_filter {
name = "filter-name"
type = "FILTER"
 
predicate {
attribute = "accumulations.tag.team"
operator = "EXACTLY_MATCHES"
values = [ "growth" ]
}
}
 
destination {
channel_id = newrelic_notification_channel.channel.id
}
}