// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IConditionalOrder} from "./IConditionalOrder.sol";

/// @title IOrderHandler
/// @notice Interface for order handlers. Order handlers extract the basic order information from the static input
///         and return the composable cow handler address that handles the order.
interface IOrderHandler {
  /// @notice Extracts token information from the static input
  /// @param staticInput The static input of the composable cow order
  /// @return fromToken The token to swap from
  /// @return toToken The token to swap to
  /// @return amount The total amount to swap
  function extractOrderInfo(bytes calldata staticInput)
    external
    view
    returns (address fromToken, address toToken, uint256 amount);

  /// @notice Returns the address of the composable cow handler
  function composableCowHandler() external view returns (IConditionalOrder);
}
