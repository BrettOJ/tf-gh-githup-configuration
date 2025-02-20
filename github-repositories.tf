data "github_user" "add_user" {
  username = "BrettOJ"
}


module "github_repository" {
  source                                  = "git::https://github.com/BrettOJ/tf-gh-module-github-repository?ref=main"
  name                                    = var.name
  description                             = var.description
  homepage_url                            = var.homepage_url
  visibility                              = var.visibility
  has_issues                              = var.has_issues
  has_projects                            = var.has_projects
  has_wiki                                = var.has_wiki
  is_template                             = var.is_template
  allow_merge_commit                      = var.allow_merge_commit
  allow_squash_merge                      = var.allow_squash_merge
  allow_rebase_merge                      = var.allow_rebase_merge
  allow_auto_merge                        = var.allow_auto_merge
  delete_branch_on_merge                  = var.delete_branch_on_merge
  web_commit_signoff_required             = var.web_commit_signoff_required
  has_downloads                           = var.has_downloads
  auto_init                               = var.auto_init
  gitignore_template                      = var.gitignore_template
  license_template                        = var.license_template
  archived                                = var.archived
  archive_on_destroy                      = var.archive_on_destroy
  vulnerability_alerts                    = var.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = var.ignore_vulnerability_alerts_during_read
  allow_update_branch                     = var.allow_update_branch
  topics                                  = var.topics
  create_readme                           = false

  template = null

  security_and_analysis = null

  environments = {
    production = {
      environment                                     = "production"
      prevent_self_review                             = true
      can_admins_bypass                               = false
      wait_timer                                      = 10
      reviewers_users                                 = [data.github_user.add_user.id]
      deployment_branch_policy_protected_branches     = false
      deployment_branch_policy_custom_branch_policies = true
    }
  }

  deployment_policies = {
    production = {
      branch_pattern = "main"
      tag_pattern    = null
    }
  }
}

