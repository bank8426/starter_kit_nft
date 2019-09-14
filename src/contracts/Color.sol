pragma solidity 0.5.0;

import "./ERC721Full.sol";

contract Color is ERC721Full{
    string[] public colors;
    mapping(string => bool) _colorExists;

    constructor() ERC721Full("Color", "COLOR") public {

    }

    function mint(string memory _color) public {
        //Require unique color
        require(!_colorExists[_color]);
        //Color - add
        uint _id = colors.push(_color);
        //Call mint()
        _mint(msg.sender,_id);
        //Color track
        _colorExists[_color] = true;
    }
}
