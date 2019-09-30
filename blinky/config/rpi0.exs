# Configuration for the Raspberry Pi Zero (target rpi0)
use Mix.Config

config :blinky, led_list: [:red]
config :nerves_leds, names: [red: "led0"]
