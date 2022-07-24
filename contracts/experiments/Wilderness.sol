// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// 4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
// 4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
// 44444444444444444444444444444444444444444444m000@0000000mm444444444444444444444444444444444444444444
// 4444444444444444444444444444444444444444440@@@@@@@@@@@@@@@@0mm44444444444444444444444444444444444444
// 44444444444444444444444444444444444400@@0@@@@@@@@@@@@@@@@@@@@@@@m44444444444444444444444444444444444
// 444444444444444444444444444444444440@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@0444444444444444444444444444444444
// 4444444444444444444444444444444m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@044444444444444444444444444444444
// 44444444444444444444444444444440@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@04444444444444444444444444444444
// 444444444444444444444444444440@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@m444444444444444444444444444444
// 44444444444444444444444444440@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@0m4444444444444444444444444444
// 444444444444444444444444444@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@4444444444444444444444444444
// 444444444444444444444444444@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@0000mmm40@@@@@4444444444444444444444444444
// 4444444444444444444444444440@@@@@@@@@@@@@@@J40@@@@@00J1............0@@@@4444444444444444444444444444
// 444444444444444444444444444m@@@@@@@@@@@@@@@@4......................1@@@04444444444444444444444444444
// 4444444444444444444444444440@@@@@@@@@@@@@@@@@1......................0@@04444444444444444444444444444
// 4444444444444444444444444440@@@@@@@@@@@@@@@@@1.......................@@@4444444444444444444444444444
// 4444444444444444444444444440@@@@@@@@@@@@@@@@@........................0@04444444444444444444444444444
// 444444444444444444444444444m@@@@@@@@@@@@@@@@0.....1Jmm4J111......4mmm0@44444444444444444444444444444
// 4444444444444444444444444444m@@@@@@@@@@@@@1.....14mmm0000m1J..1.1JJ1.m@44444444444444444444444444444
// 44444444444444444444444444444m@@@@@@@@@@@1.......1J4mmmJ......10.....0044444444444444444444444444444
// 4444444444444444444444444444440@@@@@@@@@@......................01....@m44444444444444444444444444444
// 4444444444444444444444444444444@@@@@@@@41.......................0....@m44444444444444444444444444444
// 4444444444444444444444444444444m@@@@@@@.........................01..1@m44444444444444444444444444444
// 444444444444444444444444444444440@@@@@@0........................1m..00444444444444444444444444444444
// 4444444444444444444444444444444444m00@@@1................1J.....10.1@m444444444444444444444444444444
// 4444444444444444444444444444444444440m.m0.................1JJJJJ4m.004444444444444444444444444444444
// 444444444444444444444444444444444444m0..@1........................J@44444444444444444444444444444444
// 44444444444444444444444444444444444440..4@...........4mmmmmmJ11101@044444444444444444444444444444444
// 4444444444444444444444444444444444444@...@J...........1J4m4JJJ11J4@444444444444444444444444444444444
// 4444444444444444444444444444444444444@...1001....................@0444444444444444444444444444444444
// 44444444444444444444444444444444444400......1001................m@4444444444444444444444444444444444
// 44444444444444444444444444444444444m@1.........100J.............@04444444444444444444444444444444444
// 444444444444444444444444444444444m0@0.............100J.........0044444444444444444444444444444444444
// 4444444444444444444444444444m00@@@@@@01..............1mmm@@@@@@@00mm44444444444444444444444444444444
// 444444444444444444444444m00@@@@00@@00000J...............1@@@@@@@000@@0000m44444444444444444444444444
// 44444444444444444444m00@@@@@@@@0mmmmmm0@@@m11JJJJJJ1111J00@@@@@0@@000m4m0000000m4JJJ44444JJ444444444
// 444..14441..J444...J44J.....1J441.....J4J1....144444441....141.....144441..1444J.....J41....14...444
// 444...14J...J441...144J.......41......14.......1444441......J1......1444....J44......41.....14...444
// 444....J1...J44.....J4J..14...4...J4J141..14J...4444J...441J41..14...441....144...11J41..11J44...444
// 444.........J41..J..14J...1...4...444441..J441..44441..144..J1.......44..11..441.....1J......4...444
// 444......1..14.......4J......14...J4J141..14J...4444J...44..11......J41......14JJ11...4J11...J...444
// 444..11..J..11.......1J..1...J41......14.......1444441......11..1...J4........4......11......J...444
// 444..141JJ..J...444...J..1J...441....1J4J1....144444441....1J1..1J...1..1441..1.....141.....141..444
// 44444444444444444444444444444444444J4444444J444444444444JJ44444444444444444444444JJ444444J4444444444
// 44444444444444444444444444444444444...WILDERNESS TO BLOCKCHAIN...44444444444444444444444444444444444
// 4444444444444444444444444444444444444444444...EDITIONS...4444444444444444444444444444444444444444444


import "../MetaverseBaseNFT_ERC1155.sol";

contract Wilderness is MetaverseBaseNFT_ERC1155 {
    constructor () MetaverseBaseNFT_ERC1155(
        0 ether, // public mint price
        88, // max supply
        1, // reserved for admin for testing
        1, // max per mint
        1000, // royalties
        // hidden metadata
        "ipfs://bafybeigli3j2cieqnbayiqjpobgq5qzbhdhmo2j4ygqty7vryc33llysam/",
        "Wilderness to Blockchain", // token name
        "WtoB", // token symbol
        true // start token id from 1
    ) {
        createTokenSeries(
            _createDynamicArray88(
                [ 420,10,33,69,10,111,69,69,420,33,420,420,69,69,33,33,33,69,69,111,111,33,33,33,69,33,33,10,69,33,111,69,10,69,420,33,69,33,111,33,33,420,10,10,420,420,111,33,33,69,33,69,33,69,33,10,69,420,33,111,33,33,10,69,111,69,33,33,69,69,33,420,33,33,69,420,69,33,69,33,33,33,33,33,33,69,69,420 ]
            )
        );
    }

    function _createDynamicArray88(uint16[88] memory fix) internal pure returns (uint256[] memory dyn) {
        dyn = new uint256[](88);

        for (uint i = 0; i < 88; i++) {
            dyn[i] = fix[i];
        }

        return dyn;
    }

}
