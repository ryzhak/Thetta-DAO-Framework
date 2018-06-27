pragma solidity ^0.4.22;

import "./DaoBase.sol";
import "./tokens/StdDaoToken.sol";

contract MyCompany {
    DaoBase daoBase;
    DaoStorage store;
    StdDaoToken token;

    address[] tokens;

    constructor(address _creator, address _director, address _employee) public {
        token = new StdDaoToken("StdToken", "STDT", 18);
        tokens.push(token);

		  store = new DaoStorage(tokens);
        daoBase = new DaoBase(store);
    }
}