// SPDX-License-Identifier: None
pragma solidity >=0.8.10 <=0.8.10;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract DaisukeEternalLove is ERC721, ERC721Enumerable , Ownable{

    constructor() ERC721("DaisukeEternalLove", "LOVE") {}
    uint256 public nftid = 1;
    event Deposited(address indexed payee, uint256 weiAmount);
    event Withdraw(address indexed payee, uint256 weiAmount);
    mapping(uint256 => string) private svg1s;
    mapping(uint256 => string) private svg2s;
    bool[4] Celebrated;

    function gift(address _loverAddress) external {
        require(nftid <= 2);
        require( _msgSender() == owner());
        _safeMint( _loverAddress , nftid);
        nftid++;
    }

    function tokenURI(uint256 targetnftid) public view override returns (string memory) {
        require(_exists(targetnftid), "ERC721Metadata: URI query for nonexistent token");
        string memory svg = getSVG(targetnftid);
        bytes memory json = abi.encodePacked(
            '{"name": "IKIGAI #',
            Strings.toString(targetnftid),
            '", "description": "I will love you for the rest of my life.", "image": "data:image/svg+xml;base64,',
            Base64.encode(bytes(svg)),
            '"}'
        );
        return string(abi.encodePacked("data:application/json;base64,", Base64.encode(json)));
    }

    function setSVG1(uint targetnftid , string memory _svg1Uri) public {
        require( _msgSender() == owner());
        svg1s[targetnftid] = _svg1Uri;
    }

    function setSVG2(uint targetnftid ,string memory _svg2Uri) public {
        require( _msgSender() == owner());
        svg2s[targetnftid] = _svg2Uri;
    }

    function getSVG(uint targetnftid) public view returns(string memory){
        return string(abi.encodePacked(svg1s[targetnftid],svg2s[targetnftid]));
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal
        override(ERC721 , ERC721Enumerable)
    {

        super._beforeTokenTransfer(from, to, tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721 , ERC721Enumerable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function deepositMoney() public payable {
    }

    function withdraw_weddingFund() public {
        require(msg.sender == ownerOf(1) || msg.sender == ownerOf(2));
        uint balance = address(this).balance;
        //5年記念日（木婚式）2027/10/22/00:00
        if(block.timestamp >= 1824130800 && Celebrated[0] == false){    
            Celebrated[0] = true;
            payable(ownerOf(2)).transfer(0.5 ether);  
            //7年記念日（銅婚式）2029/10/22/00:00
        }else if(block.timestamp >= 1887289200 && Celebrated[1] == false){   
            Celebrated[1] = true; 
            payable(ownerOf(2)).transfer(0.25 ether);
            //25年記念日（銀婚式）2047/10/22/00:00
        }else if(block.timestamp >= 2455282800 && Celebrated[2] == false){    
            Celebrated[2] = true; 
            payable(ownerOf(2)).transfer(0.125 ether);
            //50年記念日（金婚式）2072/10/22/00:00
        }else if(block.timestamp >= 3244287600 && Celebrated[3] == false){    
            Celebrated[3] = true; 
            payable(ownerOf(2)).transfer(0.12487879575 ether);
        }else{
            return;
        }
        emit Withdraw(msg.sender, balance);
    }
}
