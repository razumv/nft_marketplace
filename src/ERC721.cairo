# Define ERC721 structure
data NFT:
  owner: felt
  token_id: felt
  metadata: felt

# Contract storage
var nfts: map(felt, NFT)

# Event for NFT transfer
event Transfer(from: felt, to: felt, token_id: felt)

# ERC721 contract
contract ERC721:

  # Function to transfer ownership
  procedure transfer(from: felt, to: felt, token_id: felt):
    require(nfts[token_id].owner == from, "Sender does not own the NFT")
    nfts[token_id].owner = to
    emit Transfer(from=from, to=to, token_id=token_id)

  # Function to get owner of a token
  function owner_of(token_id: felt) -> (owner: felt):
    return nfts[token_id].owner
