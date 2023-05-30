
# Ex-NFTs

Extendable Universal NFTs

## Design

### DataFlow

Factory -> Creates a minimal clone of the Syaye
State -> The contract that each individual exNFT instance is going to be associated with. Holds the internal state of the exNFT that is unrelated to the protocol itself.
Diamond -> The core protocol diamond contract that holds the facet address of all currently supported Modules

