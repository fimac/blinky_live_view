# Configuration for the Raspberry Pi A+ / B+ / B / Zero (target rpi)
use Mix.Config

config :blinky, led_list: [:red]
config :nerves_leds, names: [red: "led0"]
