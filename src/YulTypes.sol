/// @title  Simple Contract Explain Yul Types  
/// @author Ifechukwu Daniel
/// @notice This is just listing the yul types 


contract YulTypes {

  
    function getUint256() external pure returns (uint256) {
      uint256 value;
      assembly{
        value:=256
      }
      return value;
    }
    
    
    function getHex() external pure returns (uint256) {
      uint256 value;
      assembly{
        value:=0x64
      }
      return value;
    }
    
}
