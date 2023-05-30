
# Ex-NFTs

Extendable Universal NFTs

## Design

### DataFlow

1. Factory -> Creates a minimal clone of the State contract
2. State -> The contract that each individual exNFT instance is going to be associated with. Holds the internal state of the exNFT that is unrelated to the protocol itself.
Diamond -> The core protocol diamond contract that holds the facet address of all currently supported Modules

