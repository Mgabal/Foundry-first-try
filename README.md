# 💰 FundMe Smart Contract (Foundry)

A decentralized crowdfunding smart contract built using Solidity and deployed with Foundry.

This project demonstrates secure smart contract development, testing, deployment scripting, and contract verification on Sepolia.

---

## 📌 Overview

FundMe is a smart contract where:

- Users can fund the contract with ETH
- A minimum USD value is required for each contribution
- Only the contract owner can withdraw the funds
- The contract integrates price feeds for ETH/USD conversion

---

## 🚀 Tech used

- Solidity ^0.8.x
- Foundry (Forge, Cast, Anvil)
- Sepolia Testnet
- Etherscan Contract Verification
- Makefile for deployment automation

```

---

## ⚙️ Installation

Clone the repository:

```bash
git clone https://github.com/Mgabal/Foundry-Fund-Me-F23
cd foundry-fund-me
```

Install dependencies:

```bash
forge install
```

Build the project:

```bash
forge build
```

---

## 🔐 Environment Setup

Make sure to create a `.env` and please hide it at .gitignore:

```bash
SEPOLIA_RPC_URL=your_rpc_url
PRIVATE_KEY=your_private_key
ETHERSCAN_API_KEY=your_api_key
```

---

## 🛠 Usage

### 🔨 Build

```bash
make build
```

### 🚀 Deploy to Sepolia

```bash
make deploy-sepolia
```

### 🧪 Run Tests

```bash
forge test
```

---

## 🧪 Testing

The project includes unit tests covering:

- Funding logic
- Minimum USD validation
- Owner-only withdraw functionality
- Revert scenarios
- Edge cases

---

## 📜 Features

- Minimum USD funding requirement
- ETH to USD conversion via price feeds
- Secure owner-only withdrawal
- Gas-optimized withdraw pattern
- Etherscan verification support

---

## 👨‍💻 Author

Mahmoud Emad  >>> Gabal
Blockchain Developer  

- GitHub: https://github.com/Mgabal
- LinkedIn: https://www.linkedin.com/in/mahmoud-emad-695883261/

---

## 📄 License

This project is licensed under the MIT License.
