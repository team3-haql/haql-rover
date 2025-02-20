from px4_msgs.srv import VehicleCommand
from px4_msgs.msg import *

import rclpy
from rclpy.node import Node

class Px4Subscriber(Node):
    def __init__(self):
        pass
    def send_debug_msg(self):
        pass

def main(args=None):
    print('hello')