sns_topic_allowed_aws_services_for_sns_published = ["events.amazonaws.com"]

cloudwatch_event_rule_description = "This is event rule description."
cloudwatch_event_rule_pattern = {
  source = [
    "aws.health"
  ],
  detail-type = [
    "AWS Health Event"
  ],
  detail = {
    service = [
      "EC2"
    ],
    eventTypeCategory = [
      "issue"
    ]
  }
}
