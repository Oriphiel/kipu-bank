
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


    /// Eventos

    /**
     * @notice Se emite cuando un usuario deposita ETH exitosamente.
     * @param user La dirección del usuario que realizó el depósito.
     * @param amount La cantidad de ETH depositada.
     */
    event Deposit(address indexed user, uint256 amount);

    /**
     * @notice Se emite cuando un usuario retira ETH exitosamente.
     * @param user La dirección del usuario que realizó el retiro.
     * @param amount La cantidad de ETH retirada.
     */
    event Withdrawal(address indexed user, uint256 amount);

    /**
     * @notice Se emite cuando se consulta el balance de un usuario.
     * @param user La dirección del usuario.
     * @param balance El balance actual del usuario.
     */
    event GetBalance(address indexed user, uint256 balance);

 
    /// Constructor

    /**
     * @notice Inicializa el contrato con los límites de retiro y depósito.
     * @param _withdrawalThreshold El umbral máximo para retiros por transacción.
     * @param _bankCap El límite global de depósitos para el contrato.
     */
    constructor(uint256 _withdrawalThreshold, uint256 _bankCap) {
        withdrawalThreshold = _withdrawalThreshold;
        bankCap = _bankCap;
    }

}