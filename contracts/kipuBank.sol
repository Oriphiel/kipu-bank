
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title KipuBank
 * @author A. H.
 * @notice Este contrato implementa un banco simple que permite a los usuarios depositar y retirar ETH en bóvedas personales.
 * @dev Este contrato permite a los usuarios depositar y retirar ETH en bóvedas personales,
 * con un límite de retiro por transacción y un límite de depósito global para el banco.
 */
contract KipuBank {
    /// Variables de Estado

    /// @notice Límite máximo de retiro por transacción.
    uint256 public immutable withdrawalThreshold;

    /// @notice Límite máximo de depósitos que el banco puede tener en total.
    uint256 public immutable bankCap;

    /// @notice Almacena los balances de ETH de cada usuario.
    mapping(address => uint256) private vaults;

    /// @notice Contador total de depósitos realizados en el contrato.
    uint256 public depositCount;

    /// @notice Contador total de retiros realizados en el contrato.
    uint256 public withdrawalCount;



}