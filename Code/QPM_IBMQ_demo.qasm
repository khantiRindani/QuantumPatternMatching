OPENQASM 2.0;
include "qelib1.inc";

// Definig classical and quantum bits
qreg q[4];
qreg a[2];
creg c[4];

// Initialization
h q[0];
h q[1];
cx q[0],q[2];
x q[0];
cx q[1],q[3];
x q[1];
cx q[1],q[3];
x q[1];
ccx q[0],q[1],q[2];
ccx q[0],q[1],q[3];
x q[0];

// Grover Search round for 0th bit of pattern
barrier q[0],q[1],q[2],q[3];
cz q[1],q[0];
cz q[3],q[0];
barrier q[0],q[1],q[2],q[3];
h q[0];
h q[1];
h q[2];
h q[3];
x q[0];
x q[1];
x q[2];
x q[3];
barrier q[0],q[1],q[2],q[3];
h q[3];
ccx q[0],q[1],a[0];
ccx q[2],a[0],a[1];
cx a[1],q[3];
ccx q[2],a[0],a[1];
ccx q[0],q[1],a[0];
h q[3];
barrier q[0],q[1],q[2],q[3];
x q[0];
x q[1];
x q[2];
x q[3];
h q[0];
h q[1];
h q[2];
h q[3];
barrier q[0],q[1],q[2],q[3];

// second round of grover for 1st bit of pattern
cz q[2],q[0];
barrier q[0],q[1],q[2],q[3];
h q[0];
h q[1];
h q[2];
h q[3];
x q[0];
x q[1];
x q[2];
x q[3];
barrier q[0],q[1],q[2],q[3];
h q[3];
ccx q[0],q[1],a[0];
ccx q[2],a[0],a[1];
cx a[1],q[3];
ccx q[2],a[0],a[1];
ccx q[0],q[1],a[0];
h q[3];
barrier q[0],q[1],q[2],q[3];
x q[0];
x q[1];
x q[2];
x q[3];
h q[0];
h q[1];
h q[2];
h q[3];
barrier q[0],q[1],q[2],q[3];

// Measurements
measure q[3] -> c[3];
measure q[2] -> c[2];
measure q[1] -> c[1];
measure q[0] -> c[0];