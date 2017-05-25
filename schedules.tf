/* schedules.tf */

resource "pagerduty_schedule" "autobots-schedule" {
  name = "On-call - Autobots"
  time_zone = "America/New_York"
  layer {
    name = "Layer 1"
    rotation_turn_length_seconds = 604800
    start = "2017-06-01T12:00:00-04:00"
    rotation_virtual_start = "2017-06-01T12:00:00-04:00"
    users = ["${pagerduty_user.bumblebee.id}", "${pagerduty_user.cliffjumper.id}", "${pagerduty_user.grimlock.id}"]
  }
}

resource "pagerduty_schedule" "decepticons-schedule" {
  name = "On-call - Decepticons"
  time_zone = "America/New_York"
  layer {
    name = "Layer 1"
    rotation_turn_length_seconds = 604800
    start = "2017-06-01T12:00:00-04:00"
    rotation_virtual_start = "2017-06-01T12:00:00-04:00"
    users = ["${pagerduty_user.starscream.id}", "${pagerduty_user.soundwave.id}", "${pagerduty_user.megatron.id}"]
  }
}
