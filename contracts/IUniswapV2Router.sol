// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.6.6;

interface UniswapV2Router {
    function removeLiquidityETHWithPermit(
  address token,
  uint liquidity,
  uint amountTokenMin,
  uint amountETHMin,
  address to,
  uint deadline,
  bool approveMax, uint8 v, bytes32 r, bytes32 s
) external returns (uint amountToken, uint amountETH);
}