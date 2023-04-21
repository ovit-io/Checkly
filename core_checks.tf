#### DEV ####
resource "checkly_check" "example-check" {
  name                      = "Dev TMX Health"
  type                      = "API"
  activated                 = true
  frequency                 = 5

  locations = [
    "us-west-1"
  ]

  request {
    url              = "https://srv-azusenap${var.env}-corg-app02.azurewebsites.net/health"
    follow_redirects = true
    skip_ssl         = false
    assertion {
      source     = "STATUS_CODE"
      comparison = "EQUALS"
      target     = "200"
    }
  }
}

#### DEVQA ####
resource "checkly_check" "example-check" {
  name                      = "QA TMX Health"
  type                      = "API"
  activated                 = true
  frequency                 = 5

  locations = [
    "us-west-1"
  ]

  request {
    url              = "https://srv-azusenap${var.env}-corg-app02.azurewebsites.net/health"
    follow_redirects = true
    skip_ssl         = false
    assertion {
      source     = "STATUS_CODE"
      comparison = "EQUALS"
      target     = "200"
    }
  }
}