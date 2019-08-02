var HelloWorld = artifacts.require("complain");

module.exports = function(deployer) {
  deployer.deploy(HelloWorld);
};
