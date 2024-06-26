
# SchoolGradingSystem

SchoolGradingSystem is a basic Solidity smart contract that demonstrates the use of require(), assert(), and revert() statements. This contract allows users to set, get, and adjust grades for students while ensuring certain conditions are met.


## Requirements

1.Solidity compiler (version ^0.8.0)

2.Development environment (e.g., Remix IDE, Hardhat, Truffle)
## Deployment

To deploy this project run

```bash
  contractInstance.setGrade(studentAddress, 85);
```
```bash
  uint8 grade = contractInstance.getGrade(studentAddress);

```
```bash
  contractInstance.adjustGrade(studentAddress, 10);
```


## Authors

- [@phyconick](https://github.com/phyconick)


## License

This project is licensed under the [MIT](https://choosealicense.com/licenses/mit/) License. See the LICENSE file for details.

