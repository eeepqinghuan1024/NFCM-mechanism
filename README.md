# Nonlinear feedback control mechanism (NFCM): An efficient mechanism for simultaneous spread of the positive and negativev information in online social networks (OSNs)
Noting: our project is in progess and will be improved in the future

NFCM has been proposed for simultaneous spread of the positive and negative information in OSNs. As shown in Figure 1, the work process of NFCM consists of five steps:
![NFCM mechanism](https://github.com/eeepqinghuan1024/NFCM-mechanism/blob/master/NFCM.jpg)
In our proposed NFCM mechanism, there is a control decision center and N network users.
* The CDC first acquires the spread of the positive and negative information in the network region.
* The CDC evaluates the number of seed users performing warning, correction and guidance strategies, respectively.
* The CDC selects seed users and then send the control scheme to these users.
* The seed users indepeddently perform the control tasks they received.
* After the seed users complete the received control tasks, the execution results are fed back to CDC.

Specifically, a novel computational model is first proposed to present the temporal dynamics of the positive and negative information spread. Users in this model are divided into four types: unknown state, positive information-spreading state, negative information-spreading state and dual information-hesitating state. Then, the transfer relationships among
four different states are shown in Figure 2:
![The transfer relationships among four user states](https://github.com/eeepqinghuan1024/NFCM-mechanism/blob/master/Relationship1.png)

Furthermore, the proposed mechanism restrains the negative information spread with minimal system expenses by devising and performing three synergetic intervention strategies.

The efficiency of the proposed mechanism is validated based on the extensive experimental results obtained from two real-world networks (i.e., Slashdot and Epinions).
