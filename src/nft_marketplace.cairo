# Import ERC-721 interface
import ERC721

# Define NFT structure
data NFT:
  owner: felt
  token_id: felt
  metadata: felt
  price: felt

# Contract storage
var nfts: map((felt, felt), NFT)
var listings: map((felt, felt), bool)  # Track whether an NFT is listed for sale

# Event for NFT transfer
event Transfer(from: felt, to: felt, token_id: felt)
event ListingChanged(owner: felt, token_id: felt, listed: bool)

# NFT Marketplace contract
contract NFTMarketplace:
  # Initialize ERC-721 contract
  is ERC721

  # Mint new NFT
  procedure mint(to: felt, token_id: felt, metadata: felt):
    require_sender(self.admin)
    nft = NFT(owner=to, token_id=token_id, metadata=metadata, price=0)
    nfts[(to, token_id)] = nft
    listings[(to, token_id)] = false
    emit Transfer(from=0, to=to, token_id=token_id)

  # Transfer NFT
  procedure transfer(from: felt, to: felt, token_id: felt):
    require(nfts[(from, token_id)].owner == from, "Sender does not own the NFT")
    nfts[(from, token_id)].owner = to
    listings[(from, token_id)] = false  # Remove listing when transferring
    emit Transfer(from=from, to=to, token_id=token_id)

  # Get NFT owner
  function owner_of(token_id: felt) -> (owner: felt):
    return nfts[(owner, token_id)].owner

  # List NFT for sale
  procedure list_for_sale(token_id: felt, price: felt):
    require(nfts[(self.sender, token_id)].owner == self.sender, "Sender does not own the NFT")
    nfts[(self.sender, token_id)].price = price
    listings[(self.sender, token_id)] = true
    emit ListingChanged(owner=self.sender, token_id=token_id, listed=true)

  # Delist NFT
  procedure delist(token_id: felt):
    require(nfts[(self.sender, token_id)].owner == self.sender, "Sender does not own the NFT")
    nfts[(self.sender, token_id)].price = 0
    listings[(self.sender, token_id)] = false
    emit ListingChanged(owner=self.sender, token_id=token_id, listed=false)

  # Change price of listing
  procedure change_price(token_id: felt, new_price: felt):
    require(nfts[(self.sender, token_id)].owner == self.sender, "Sender does not own the NFT")
    nfts[(self.sender, token_id)].price = new_price

  # Buy NFT
  procedure buy(token_id: felt):
    seller = nfts[(self.sender, token_id)].owner
    price = nfts[(seller, token_id)].price
    require(price > 0, "NFT is not for sale")
    transfer(seller, self.sender, token_id)
    self.send(seller, price)
    nfts[(seller, token_id)].price = 0  # Reset price after sale
    listings[(seller, token_id)] = false
    emit ListingChanged(owner=seller, token_id=token_id, listed=false)

  # Get NFT price
  function get_price(token_id: felt) -> (price: felt):
    return nfts[(owner, token_id)].price

  # Check if an NFT is listed for sale
  function is_listed(token_id: felt) -> (listed: bool):
    return listings[(owner, token_id)]

  # Get the listing price of an NFT
  function get_listing_price(token_id: felt) -> (price: felt):
    return nfts[(owner, token_id)].price

  # Get a list of NFTs owned by an address
  function get_owned_nfts(owner: felt) -> (token_ids: felt[]):
    var result: felt[] = []
    for _, nft in nfts:
      if nft.owner == owner {
        result.push(nft.token_id)
      }
    return result
