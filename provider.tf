terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.40.1"
    }
  }
}

provider "newrelic" {
    account_id = 4438271
    api_key = "NRAK-7V050VOSIMV4H2NVXNO7TCVJDYQ"
    region = "US"
  # Configuration options
}