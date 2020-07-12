# NodeScan
Bash script that loops through different hosts, and known JSON RPC endpoints.

Use this bash script to test ethereum based blockchain nodes. Many blockchains use Ethereums JSON RPC client(s) implementations.

An example file of Methods that can be used is in the "Lists" directory. 

`methodslist` and `iplist` both take a txt file as an input, while `port` only takes the in-line argument. 

## Usage
`./nodeScan.sh <methodslist.txt> <iplist.txt> portnumber` (8545 is Ethereums default port number for incoming JSON-RPC connections)

The resulting output will append to a txt file called `outfile.txt'
