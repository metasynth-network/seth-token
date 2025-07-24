const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  console.log(`Deploying sETH from: ${deployer.address}`);

  const sETH = await hre.ethers.getContractFactory("sETH");
  const contract = await sETH.deploy();
  await contract.waitForDeployment();

  const address = await contract.getAddress();
  console.log(`sETH deployed to: ${address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

