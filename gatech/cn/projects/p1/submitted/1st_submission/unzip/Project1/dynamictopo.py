#!/usr/bin/python
        										    

# CS6250 Computer Networks Project 1
# Creates a dynamic topology based on command line parameters and starts the Mininet Command Line Interface.

from mininet.topo import Topo
from mininet.net import Mininet
from mininet.log import lg, output, setLogLevel
from mininet.node import CPULimitedHost
from mininet.link import TCLink
from mininet.cli import CLI
import argparse
import sys
import os

# Parse Command Line Arguments
parser = argparse.ArgumentParser(description="Dynamic Topologies")
parser.add_argument('--delay',
                    help="Latency of network links, in ms",
                    required=True)

parser.add_argument('--bw',
                    type=int,
                    help=("Bandwidth of the links in Mbps."
                    "Must be >= 1"),
                    required=True)

parser.add_argument('--z',
                    type=int,
                    help=("Number of zones to create."
                    "Must be >= 1"),
                    required=True)

parser.add_argument('--n',
                    type=int,
                    help=("Number of hosts to create in each zone."
                    "Must be >= 1"),
                    required=True)

args = parser.parse_args()

lg.setLogLevel('info')

# Topology to be instantiated in Mininet
class DynamicTopo(Topo):
    "Dynamic Topology"

    def __init__(self, n=1, delay='1ms', z=1, bw=1, cpu=.1, max_queue_size=None, **params):
        """Ring topology with z zones.
           n: number of hosts per zone
           cpu: system fraction for each host
           bw: link bandwidth in Mb/s
           delay: link latency (e.g. 10ms)"""

        # Initialize topo
        Topo.__init__(self, **params)

        #TODO: Create your Dynamic Mininet Topology here!
        #NOTE: You MUST label switches as s1, s2, ... sz
        #NOTE: You MUST label hosts as h1-1, h1-2, ... hz-n     
        #HINT: Use a loop to construct the topology in pieces.

        hostConfig = {'cpu': cpu}
        linkConfig = {'bw': bw, 'delay': delay, 'loss': 0, 'max_queue_size': max_queue_size}

        """
        s1 = self.addSwitch('s1')
        h1_1 = self.addHost('h1-1', **hostConfig)
        h1_2 = self.addHost('h1-2', **hostConfig)
        self.addLink(h1_1, s1, port1=0, port2=1, **linkConfig)
        self.addLink(h1_2, s1, port1=2, port2=3, **linkConfig)
        """

        switchList = []
        portHostSwitchNumber = 0

        for zoneIdx in range(1, z + 1):
            switchName = 's{0}'.format(zoneIdx)
            currentSwitch = self.addSwitch(switchName)
            switchList.append(currentSwitch)

            for hostIdx in range(1, n + 1):
                hostName = 'h{0}-{1}'.format(zoneIdx, hostIdx)
                currentHost = self.addHost(hostName, **hostConfig)
                self.addLink(currentHost, currentSwitch, portHostSwitchNumber, portHostSwitchNumber + 1, **linkConfig)
                portHostSwitchNumber += 2

        #Add links between switches:
        portSwitchSwitchNumber = portHostSwitchNumber + 1

	if z == 2:
           sa = switchList[0]
           sb = switchList[1]
           self.addLink(sa, sb, portSwitchSwitchNumber, portSwitchSwitchNumber + 1, **linkConfig)

        if z > 2:
            for zoneIdx in range(0, z):
                currentSwitch = switchList[zoneIdx]
                nextIndex = (zoneIdx + 1) % z
                nextSwitch = switchList[nextIndex]
                self.addLink(currentSwitch, nextSwitch, portSwitchSwitchNumber, portSwitchSwitchNumber + 1, **linkConfig)
                portSwitchSwitchNumber += 2
			                    
def main():
    "Create specified topology and launch the command line interface"    
    topo = DynamicTopo(n=args.n, delay=args.delay, z=args.z, bw=args.bw)
    net = Mininet(topo=topo, host=CPULimitedHost, link=TCLink)
    net.start()

    #TODO: Since this topology contains a cycle, we must enable the Spanning Tree Protocol (STP) on each switch.
    #      This is done with the following line of code: s1.cmd('ovs-vsctl set bridge s1 stp-enable=true')
    #      Here, you will need to generate this line of code for each switch.
    #HINT: You will need to get the switch objects from the net object defined above.

    allSwitches = net.switches
    numSwitches = len(allSwitches)

    for i in range(0, numSwitches):
        currentSwitch = allSwitches[i]    
        currentSwitchName = currentSwitch.name
        #print('currentSwitchName = {0}'.format(currentSwitchName))
        currentSwitch.cmd('ovs-vsctl set bridge {0} stp-enable=true'.format(currentSwitchName))
        
    CLI(net)
    net.stop()
    
if __name__ == '__main__':
    setLogLevel('info')
    main()
