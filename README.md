#The parameter when calling the script is the public key from which, using the wget function, the main one is downloaded first, and then the incremenal snapshot. 
The download takes place in the $HOME/solana/ledger directory solana-snap.
Usually the download takes place from the key known-validator. In mainnet-bett, this is for example:
./snap.sh GdnSyH3YtwcxFvQrVVJMm1JhTS4QVX7MFsX56uJLUfiZ
./snap.sh 7Np41oeYqPefeNQEHSv1UDhYrehxin3NStELsSKCT4K2
