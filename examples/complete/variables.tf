variable "sns_topic_allowed_aws_services_for_sns_published" {
  type        = list(string)
  description = "AWS services that will have permission to publish to SNS topic. Used when no external json policy is used."
  default     = ["cloudwatch.amazonaws.com"]
}

variable "sns_topic_subscribers" {
  type = map(object({
    protocol = string
    # The protocol to use. The possible values for this are: sqs, sms, lambda, application. (http or https are partially supported, see below) (email is an option but is unsupported, see below).
    endpoint = string
    # The endpoint to send data to, the contents will vary with the protocol. (see below for more information)
    endpoint_auto_confirms = bool
    # Boolean indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty (default is false)
  }))
  description = "Required configuration for subscibres to SNS topic."
  default     = {}
}


