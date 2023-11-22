```markdown
# ERC-721 Exchange Contract on StarkNet

## Overview

This StarkNet contract implements an ERC-721 exchange allowing users to list, buy, and bid on NFTs. It includes functionalities such as listing an NFT for sale, delisting an NFT, approving ERC-20 tokens for payment, buying NFTs, placing bids, and more.

## Features

- **List NFT for Sale:** Allows users to list an ERC-721 token for sale with a specified payment token and listing price.

- **Delist NFT:** Allows users to delist an ERC-721 token that was previously listed for sale.

- **Approve Token for Payment:** The owner can approve or disapprove ERC-20 tokens for payment.

- **Buy NFT:** Users can buy an ERC-721 token listed for sale, transferring ownership and payment.

- **Bid on NFT:** Users can place bids on ERC-721 tokens listed for sale.

- **Set Treasury Address:** The owner can set the treasury address for fund management.

- **Get Bid Details:** Retrieve details about a bid on a specific ERC-721 token.

- **Cancel Bid:** Users can cancel their own bid on an ERC-721 token.

- **Accept Bid:** The owner can accept a bid on an ERC-721 token, transferring ownership and payment.

## Getting Started

### Contract Deployment

Deploy the contract to StarkNet with the necessary parameters including the admin, ERC-20 token address, treasury address, platform fee, and multiplier.

### Contract Interaction

Interact with the contract using the provided functions such as listing, delisting, approving tokens, buying, placing bids, and more.

### View Functions

Use view functions to retrieve information from the contract without modifying its state.

### External Functions

External functions modify the state of the contract and may require transaction fees.

## Usage Examples

### Listing an NFT for Sale

```starknet
# Code snippet for listing an NFT for sale.
# Include relevant parameters.
listing(nft_collection, token_id, payment_token, listing_price)
```

### Buying an NFT

```starknet
# Code snippet for buying an NFT.
# Include relevant parameters.
buy(nft_collection, token_id, data_len, data)
```

### Placing a Bid

```starknet
# Code snippet for placing a bid on an NFT.
# Include relevant parameters.
bid(nft_collection, token_id, payment_token, price_bid, expire_time)
```

## Contributing

Feel free to contribute to the development of this contract. Bug reports, feature requests, and pull requests are welcome.

## License

This contract is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

Please replace placeholders like `nft_collection`, `token_id`, `payment_token`, `listing_price`, etc., with actual variable names or explanations based on the contract implementation. Additionally, make sure to customize the README to accurately reflect the specifics of your contract.