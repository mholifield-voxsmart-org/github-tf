variable "name" {
  description = "The name of the repository"
  type        = string
}

variable "description" {
  description = "The description of the repository"
  type        = string
  default     = "Repository created by Terraform"
}

variable "visibility" {
  description = "The visibility of the repository"
  type        = string
  default     = "private"
}

variable "has_issues" {
  description = "Whether the repository has issues enabled"
  type        = bool
  default     = true

}

variable "has_projects" {
  description = "Whether the repository has projects enabled"
  type        = bool
  default     = true

}

variable "has_discussions" {
  description = "Whether the repository has discussions enabled"
  type        = bool
  default     = true

}

variable "has_wiki" {
  description = "Whether the repository has wiki enabled"
  type        = bool
  default     = true

}
