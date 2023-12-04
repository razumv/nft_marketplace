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

The decision to embark on my project within the StarkNet ecosystem is underpinned by the recognition of the immense potential I foresee in its unique approach and cutting-edge technologies. What captivates me most is not just the existing framework but the untapped possibilities and uncharted territories that my project can explore and pioneer.

In crafting my project, I aim to channel this potential into a tangible and groundbreaking initiative. The emphasis will be on leveraging StarkNet's advanced features to create a platform that goes beyond the ordinary—an ecosystem that not only supports but propels developers towards unprecedented heights of creativity. I started from creating simple NFT contract and continue creating utils contract, collabing with people who build marketplaces.

My vision for the project extends beyond the conventional boundaries, focusing on the innovative applications and solutions that can emerge within this dynamic ecosystem. I am dedicated to building not just a project but a catalyst for transformative change, with a keen focus on unlocking the full spectrum of opportunities StarkNet has to offer.

In the development journey, my strategy revolves around harnessing the technological capabilities of StarkNet to build not just a product but an ever-evolving ecosystem. By fostering an environment that encourages continual exploration and innovation, I aim to create a project that stands as a testament to the boundless potential of StarkNet and the creative endeavors it can inspire.