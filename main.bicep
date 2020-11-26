param stgName string = 'Techorama2020'

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: stgName
  location: resourceGroup().location
  kind: 'Storage'
  sku: {
    name: 'Standard_LRS'
  }
}

output blobendpoint string = stg.properties.primaryEndpoints.blob

