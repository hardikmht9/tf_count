variable "name_policy" {
  type = string



}

variable "conditions" {
  type = list(object({
    account_id                     = number
    type                           = string
    name                           = string
    description                    = string
    runbook_url                    = string
    enabled                        = bool
    violation_time_limit_seconds   = number
    fill_option                    = string
    fill_value                     = number
    aggregation_window             = number
    aggregation_method             = string
    aggregation_delay              = number
    expiration_duration            = number
    open_violation_on_expiration   = string
    close_violations_on_expiration = string
    slide_by                       = number
    query                          = string
    operator                       = string
    threshold                      = number
    threshold_duration             = number
    threshold_occurrences          = string
    warning_operator               = string
    warning_threshold              = number
    warning_threshold_duration     = number
    warning_threshold_occurrences  = string

    }
  ))
}
