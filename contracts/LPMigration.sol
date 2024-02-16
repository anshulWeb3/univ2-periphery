// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.6.6;

// import "./IUniswapV2Router.sol";
import "./interfaces/IUniswapV2Router01.sol";

contract LPMigration {
    // constructor() {}
    //  address LP_ETH_GTH_ADDR = 0x36A48Ca66777DA2831903394b7bD4D06753D5eaA;
    
    // address  uniswapv2Router = 0x36A48Ca66777DA2831903394b7bD4D06753D5eaA;
    // IUniswapV2Router02 public uniswapRouter;
    // address  GTH = 0xeb986DA994E4a118d5956b02d8b7c3C7CE373674;

    function liquidate(
        address router,
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external {

        /*
        * approveMax=true takes precedence over liquidity amount
        * 
        */    
        IUniswapV2Router01(router).removeLiquidityETHWithPermit(
            token,
            liquidity,
            amountTokenMin,
            amountETHMin,
            to,
            deadline,
            approveMax,
            v,
            r,
            s
        );
    }
}
