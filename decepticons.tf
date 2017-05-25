/* decepticons.tf */

resource "pagerduty_user" "starscream" {
  name = "Starscream"
  email = "starscream@transformers.com"
  color = "blue"
  role = "user"
  job_title = "Soldier"
  teams = ["${pagerduty_team.decepticons.id}", "${pagerduty_team.transformers.id}"]
}

resource "pagerduty_user" "soundwave" {
  name = "Soundwave"
  email = "soundwave@transformers.com"
  color = "purple"
  role = "user"
  job_title = "Soldier"
  teams = ["${pagerduty_team.decepticons.id}", "${pagerduty_team.transformers.id}"]
}

resource "pagerduty_user" "megatron" {
  name = "Megatron"
  email = "megatron@transformers.com"
  color = "black"
  role = "user"
  job_title = "Evil Genius"
  teams = ["${pagerduty_team.decepticons.id}", "${pagerduty_team.transformers.id}"]
}
