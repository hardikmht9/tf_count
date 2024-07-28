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
