/************************* VARIABLES *********************************************/
variable "environment" {}

variable "name" {
  type        = string
  description = "Name of the queue"
}

variable "key_id" {
  type        = string
  description = "KMS key id for encryption"
}

variable "region" {
  description = "The AWS region."
  default     = "ap-southeast-1"
}

variable "owner" {
  default     = "DevOps"
  description = "The name of the team who manages it"
}

variable "support" {
  default     = "team@yourcompany.com"
  description = "Support contact"
}

/************************* VARIABLES *********************************************/

/************************* OUTPUTS ***********************************************/
output "dead_letter_queue_id" {
  description = "Dead letter queue id dead letter queue URL"
  value       = aws_sqs_queue.dead_letter_queue.id
}

output "dead_letter_queue_arn" {
  description = "Dead letter queue arn dead letter queue arn"
  value       = aws_sqs_queue.dead_letter_queue.arn
}

output "queue_id" {
  description = "Queue id dead queue URL"
  value       = aws_sqs_queue.queue.id
}

output "queue_arn" {
  description = "Queue Arn dead queue arn"
  value       = aws_sqs_queue.queue.arn
}

output "queue_name" {
  description = "Queue name dead queue full name"
  value       = "${var.name}-queue-${var.environment}"
}

/************************* OUTPUTS ***********************************************/

