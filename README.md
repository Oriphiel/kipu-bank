# KipuBank: A Personal ETH Vault Smart Contract

![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg) ![Solidity version](https://img.shields.io/badge/solidity-%5E0.8.20-lightgrey)

## 📜 Description

**KipuBank** is a smart contract deployed on the Ethereum blockchain that functions as a secure, decentralized, and personal vault for ETH. This project serves as a foundational exercise for aspiring Web3 developers, implementing best practices in Solidity for security, readability, and documentation.

Users can deposit Ether (ETH) into their personal vault within the contract and withdraw their funds securely, subject to a set of predefined rules. The contract is a practical demonstration of core Solidity concepts and stands as the first building block of a growing Web3 portfolio.

## ✨ Key Features

*   **Personal Vaults:** Each user has a private vault mapped to their address to store ETH.
*   **Secure Deposits:** A `payable` `deposit()` function to safely accept ETH deposits.
*   **Controlled Withdrawals:** Users can withdraw funds, but each transaction is limited by a fixed `withdrawalThreshold` to prevent immediate, large-scale drains.
*   **Global Bank Cap:** The contract has a `bankCap`, a maximum total amount of ETH it can hold, set at deployment time.
*   **Security First:** Implements the **Checks-Effects-Interactions Pattern** to prevent re-entrancy attacks.
*   **Custom Errors:** Uses modern Solidity custom errors for gas-efficient and descriptive error handling.
*   **Event Emission:** Emits `Deposit` and `Withdrawal` events for successful operations, enabling easy off-chain tracking.
*   **Comprehensive Documentation:** The entire codebase is commented using the **NatSpec** standard for maximum clarity and auditability.

## 🚀 Deployment using Remix IDE

This contract is designed to be deployed easily using the [Remix Desktop IDE](https://remix-project.org/) on the **Sepolia testnet**.

### Prerequisites

*   [Remix Desktop IDE](https://github.com/ethereum/remix-desktop/releases) installed.
*   A browser wallet like [MetaMask](https://metamask.io/) installed and configured.
*   Your MetaMask wallet funded with Sepolia ETH from a public faucet (e.g., [sepoliafaucet.com](https://sepoliafaucet.com/)).

### Deployment Steps

1.  **Open Remix & Create File:** Launch Remix Desktop, create a new file named `KipuBank.sol` in the `contracts` folder, and paste the contract code into it.
2.  **Compile the Contract:**
    *   Navigate to the **Solidity Compiler** tab (the second icon on the left).
    *   Select a compiler version compatible with the pragma (e.g., `0.8.20`).
    *   Click the **Compile KipuBank.sol** button. A green checkmark will appear on the icon when successful.
3.  **Deploy to Sepolia:**
    *   Navigate to the **Deploy & Run Transactions** tab (the third icon).
    *   In the **ENVIRONMENT** dropdown, select **Browsser wallet - MetaMask**. A MetaMask window will pop up asking you to connect your wallet. Approve it.
    *   Ensure your wallet is connected to the **Sepolia Test Network**.
    *   In the **CONTRACT** dropdown, select `KipuBank - contracts/KipuBank.sol`.
    *   Next to the `Deploy` button, expand the details. You will see two fields for the constructor arguments: `_withdrawalThreshold` and `_bankCap`. You must enter these values in **wei**.
        *   **Example:** To set a 1 ETH threshold and a 50 ETH cap, enter `1000000000000000000` and `50000000000000000000`.
    *   Click the orange **Deploy** button and confirm the transaction in MetaMask.
    *   Once confirmed, your contract address will appear under "Deployed Contracts" at the bottom of the Remix panel.

### Verification on Etherscan

1.  Copy the deployed contract address from Remix.
2.  Go to [sepolia.etherscan.io](https://sepolia.etherscan.io/) and paste the address into the search bar.
3.  On the contract's page, click the **Contract** tab and then the **Verify & Publish** link.
4.  On the verification page, select:
    *   Compiler Type: **Solidity (Single File)**
    *   Compiler Version: The **exact** version you used in Remix (e.g., `v0.8.20+commit...`).
    *   License: **MIT License (MIT)**.
5.  Click **Continue**. On the next page, paste the **entire, exact code** from your `KipuBank.sol` file into the text box.
6.  Click **Verify and Publish**. If successful, your contract's source code will now be public and viewable on Etherscan.

## 🔌 Interacting with the Contract

You can interact with the deployed contract in two main ways:

1.  **Directly from Remix:** Under the "Deployed Contracts" section, you can expand your contract to see all its functions. You can call `deposit` (entering a value in the `VALUE` field first), `withdraw`, and `getUserVaultBalance` right from the Remix UI.
2.  **From Etherscan:** On your verified contract's Etherscan page, use the **"Read Contract"** and **"Write Contract"** tabs to interact with its functions.

---

This project serves as a cornerstone of my growing Web3 development portfolio. It was built with a strong focus on security, maintainability, and best practices. Thank you for reviewing it.