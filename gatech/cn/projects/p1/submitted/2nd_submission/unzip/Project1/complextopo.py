from mininet.topo import Topo
from mininet.net import Mininet
from mininet.link import TCLink
from mininet.util import custom
        										    

# Topology to be instantiated in Mininet
class ComplexTopo(Topo):
    "Mininet Complex Topology"

    def __init__(self, cpu=.1, max_queue_size=None, **params):

        # Initialize topo
        Topo.__init__(self, **params)

        #TODO: Create your Mininet Topology here!
	
	# Host and link configuration
	hostConfig = {'cpu': cpu}
	linkEthernetConfig = {'bw': 25, 'delay': '2ms', 'loss': 0, 'max_queue_size': max_queue_size}
	linkWifiConfig = {'bw': 10, 'delay': '6ms', 'loss': 3, 'max_queue_size': max_queue_size}
	link3GConfig = {'bw': 3, 'delay': '10ms', 'loss': 8, 'max_queue_size': max_queue_size}
         
	# Hosts and switches
	h1 = self.addHost('h1', **hostConfig)
	h2 = self.addHost('h2', **hostConfig)
	h3 = self.addHost('h3', **hostConfig)
        s1 = self.addSwitch('s1')
        s2 = self.addSwitch('s2')
        s3 = self.addSwitch('s3')
        s4 = self.addSwitch('s4')
 
	# Links
        self.addLink(h1, s1, port1=0, port2=1, **linkEthernetConfig)
        self.addLink(s1, s2, port1=2, port2=3, **linkEthernetConfig)
        self.addLink(s2, s3, port1=4, port2=5, **linkEthernetConfig)
        self.addLink(s3, h2, port1=6, port2=7, **linkWifiConfig)
        self.addLink(s2, s4, port1=8, port2=9, **linkEthernetConfig)
        self.addLink(s4, h3, port1=10, port2=11, **link3GConfig)



























