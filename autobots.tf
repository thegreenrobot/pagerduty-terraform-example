/* autobots.tf */

resource "pagerduty_user" "bumblebee" {
  name = "Bumblebee"
  email = "bumblebee@transformers.com"
  color = "yellow"
  role = "user"
  job_title = "Soldier"
  teams = ["${pagerduty_team.autobots.id}", "${pagerduty_team.transformers.id}"]
}

resource "pagerduty_user" "cliffjumper" {
  name = "Cliffjumper"
  email = "cliffjumper@transformers.com"
  color = "red"
  role = "user"
  job_title = "Soldier"
  teams = ["${pagerduty_team.autobots.id}", "${pagerduty_team.transformers.id}"]
}

resource "pagerduty_user" "grimlock" {
  name = "Grimlock"
  email = "grimlock@transformers.com"
  color = "white"
  role = "user"
  job_title = "Dinosaur"
  teams = ["${pagerduty_team.autobots.id}", "${pagerduty_team.transformers.id}"]
}

resource "pagerduty_user" "optimus" {
  name = "Optimus Prime"
  email = "prime@transformers.com"
  color = "dark-blue"
  role = "admin"
  job_title = "Leader"
  teams = ["${pagerduty_team.autobots.id}", "${pagerduty_team.transformers.id}"]
}
