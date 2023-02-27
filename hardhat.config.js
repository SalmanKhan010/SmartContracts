/** @type import('hardhat/config').HardhatUserConfig */
require("@nomiclabs/hardhat-waffle")

const ALCHEMY_API_KEY = "gv8JxkgmO4DAzLuqgz3SvXfjxgIezLPe";
const GOERLI_PRIVATE_KEY = "1a4ccc60d8dcbb8c956cfeb0a4ae00db57a7acb6683b37aa98837717bc30c8a8";

module.exports = {
  solidity: "0.8.17",
  gasReporter: {
    enabled: true,
    gasPrice: 100,
  },
  networks:{
    goerli:{
      url:`https://eth-goerli.g.alchemy.com/v2/${ALCHEMY_API_KEY}`,
      accounts: [`0x${GOERLI_PRIVATE_KEY}`],
      chainId: 5,
    },
  },
};
