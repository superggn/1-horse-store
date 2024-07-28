// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract DemoScript is Script {
    function setUp() public {}

    function run() public {
        // vm.broadcast();
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        address addr = HuffDeployer.config().deploy("src/test");
        console.log("contract addr:", addr);
        vm.stopBroadcast();
    }
}
