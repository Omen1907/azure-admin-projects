@description('Public DNS zone name')
param zoneName string = '${uniqueString(resourceGroup().id)}.quickstarttemplate.org'
@description('DNS A record name')
param recordName string = 'www'
@description('IPv4 addresses for the A record')
param ipAddresses array = [
  '203.0.113.1'
  '203.0.113.2'
]
@description('DNS record TTL in seconds')
param ttl int = 3600

resource dnsZone 'Microsoft.Network/dnsZones@2018-05-01' = {
  name: zoneName
  location: 'global'
}

resource record 'Microsoft.Network/dnsZones/A@2018-05-01' = {
  parent: dnsZone
  name: recordName
  properties: {
    TTL: 3600
    ARecords: [
      for ip in ipAddresses: {
        ipv4Addresses: ip
      }
    ]
  }
}

output nameServers array = dnsZone.properties.nameServers
