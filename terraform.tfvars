
name_policy = "value_policy"

conditions = [
  {
    account_id                     = 4438271
    type                           = "static"
    name                           = "newcondition"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT average(largestContentfulPaint) FROM PageViewTiming WHERE appName = 'react-cart' "
    operator                       = "above"
    threshold                      = 5.5
    threshold_duration             = 300
    threshold_occurrences          = "ALL"
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"
  },
  {
    account_id                     = 4438271
    type                           = "static"
    name                           = "newcondition"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT average(largestContentfulPaint) FROM PageViewTiming WHERE appName = 'react-cart' "
    operator                       = "above"
    threshold                      = 5.5
    threshold_duration             = 300
    threshold_occurrences          = "ALL"
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"
  },
  {
    account_id                     = 4438271
    type                           = "static"
    name                           = "newcondition"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT average(largestContentfulPaint) FROM PageViewTiming WHERE appName = 'react-cart' "
    operator                       = "above"
    threshold                      = 5.5
    threshold_duration             = 300
    threshold_occurrences          = "ALL"
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"
  },
  {
    account_id                     = 4438271
    type                           = "static"
    name                           = "newcondition"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT average(largestContentfulPaint) FROM PageViewTiming WHERE appName = 'react-cart' "
    operator                       = "above"
    threshold                      = 5.5
    threshold_duration             = 300
    threshold_occurrences          = "ALL"
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"
  },
  {
    account_id                     = 4438271
    type                           = "static"
    name                           = "newcondition"
    description                    = "Alert when transactions are taking too long"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    query                          = "SELECT average(largestContentfulPaint) FROM PageViewTiming WHERE appName = 'react-cart' "
    operator                       = "above"
    threshold                      = 5.5
    threshold_duration             = 300
    threshold_occurrences          = "ALL"
    warning_operator               = "Above"
    warning_threshold              = 3.5
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "All"
  }
]
