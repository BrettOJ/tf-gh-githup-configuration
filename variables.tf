variable "name" {
  description = "The name of the repository."
  type        = string
}

variable "description" {
  description = "A description of the repository."
  type        = string
  default     = null
}

variable "homepage_url" {
  description = "URL of a page describing the project."
  type        = string
  default     = null
}

variable "visibility" {
  description = "Can be public or private. Overrides the private parameter."
  type        = string
}

variable "has_issues" {
  description = "Set to true to enable the GitHub Issues features on the repository."
  type        = bool
  default     = false
}

variable "has_discussions" {
  description = "Set to true to enable GitHub Discussions on the repository."
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "Set to true to enable the GitHub Projects features on the repository."
  type        = bool
  default     = true
}

variable "has_wiki" {
  description = "Set to true to enable the GitHub Wiki features on the repository."
  type        = bool
  default     = false
}

variable "is_template" {
  description = "Set to true to tell GitHub that this is a template repository."
  type        = bool
  default     = false
}

variable "allow_merge_commit" {
  description = "Set to false to disable merge commits on the repository."
  type        = bool
  default     = true
}

variable "allow_squash_merge" {
  description = "Set to false to disable squash merges on the repository."
  type        = bool
  default     = true
}

variable "allow_rebase_merge" {
  description = "Set to false to disable rebase merges on the repository."
  type        = bool
  default     = true
}

variable "allow_auto_merge" {
  description = "Set to true to allow auto-merging pull requests on the repository."
  type        = bool
  default     = false
}

variable "squash_merge_commit_title" {
  description = "Default squash merge commit title."
  type        = string
  default     = null
}

variable "squash_merge_commit_message" {
  description = "Default squash merge commit message."
  type        = string
  default     = null
}

variable "merge_commit_title" {
  description = "Default merge commit title."
  type        = string
  default     = null
}

variable "merge_commit_message" {
  description = "Default merge commit message."
  type        = string
  default     = null
}

variable "delete_branch_on_merge" {
  description = "Automatically delete head branch after a pull request is merged."
  type        = bool
  default     = false
}

variable "web_commit_signoff_required" {
  description = "Require contributors to sign off on web-based commits."
  type        = bool
  default     = false
}

variable "has_downloads" {
  description = "Set to true to enable the (deprecated) downloads features on the repository."
  type        = bool
  default     = false
}

variable "auto_init" {
  description = "Set to true to produce an initial commit in the repository."
  type        = bool
  default     = false
}

variable "gitignore_template" {
  description = "Use the name of the template without the extension."
  type        = string
  default     = null
}

variable "license_template" {
  description = "Use the name of the template without the extension."
  type        = string
  default     = null
}

variable "default_branch" {
  description = "The name of the default branch of the repository."
  type        = string
  default     = null
}

variable "archived" {
  description = "Specifies if the repository should be archived."
  type        = bool
  default     = false
}

variable "archive_on_destroy" {
  description = "Set to true to archive the repository instead of deleting on destroy."
  type        = bool
  default     = false
}


variable "topics" {
  description = "The list of topics of the repository."
  type        = list(string)
  default     = []
}

variable "vulnerability_alerts" {
  description = "Set to true to enable security alerts for vulnerable dependencies."
  type        = bool
  default     = false
}

variable "ignore_vulnerability_alerts_during_read" {
  description = "Set to true to not call the vulnerability alerts endpoint."
  type        = bool
  default     = false
}

variable "allow_update_branch" {
  description = "Set to true to always suggest updating pull request branches."
  type        = bool
  default     = false
}

variable "pages_source_branch" {
  description = "The branch to publish to GitHub Pages."
  type        = string
  default     = null
}

variable "pages_source_path" {
  description = "The source directory for GitHub Pages."
  type        = string
  default     = null
}

variable "pages_build_type" {
  description = "The type of build for GitHub Pages."
  type        = string
  default     = null
}

variable "pages_cname" {
  description = "The custom domain for GitHub Pages."
  type        = string
  default     = null
}

variable "template_owner" {
  description = "The owner of the template repository."
  type        = string
  default     = null
}

variable "template_repository" {
  description = "The name of the template repository."
  type        = string
  default     = null
}

variable "template_include_all_branches" {
  description = "Set to true to include all branches in the template repository."
  type        = bool
  default     = false
}

variable "security_and_analysis_advanced_security_status" {
  description = "The status of the repository's advanced security configuration."
  type        = string
  default     = null
}

variable "security_and_analysis_secret_scanning_status" {
  description = "The status of the repository's secret scanning configuration."
  type        = string
  default     = null
}

variable "security_and_analysis_secret_scanning_push_protection_status" {
  description = "The status of the repository's secret scanning push protection configuration."
  type        = string
  default     = null
}


variable "environments" {
  description = "A map of environments with their configurations"
  type = map(object({
    environment                                     = string
    prevent_self_review                             = bool
    can_admins_bypass                               = bool
    wait_timer                                      = number
    reviewers_users                                 = list(string)
    deployment_branch_policy_protected_branches     = bool
    deployment_branch_policy_custom_branch_policies = bool
  }))
  default = null
}

variable "deployment_policies" {
  description = "A map of deployment policies with their configurations"
  type = map(object({
    branch_pattern = string
    tag_pattern    = string
  }))
  default = null
}