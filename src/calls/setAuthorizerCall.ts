import { Wallet } from "fuels";
import { TestContractAbi__factory } from "../../pkg/types/contracts";


export const callSetAuthorizer = async (contractId: string, wallet: Wallet) => {
    console.log("Calling test_function");
  const contractInstance = TestContractAbi__factory.connect(contractId, wallet);

  // const transaction = await contractInstance.submitResult.test_function();
  const transaction = await contractInstance.submit.test_function();

  return transaction;
};
