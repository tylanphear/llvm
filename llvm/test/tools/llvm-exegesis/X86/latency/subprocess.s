# REQUIRES: exegesis-can-execute-x86_64, exegesis-can-measure-latency, x86_64-linux

# RUN: llvm-exegesis -mtriple=x86_64-unknown-unknown -mode=latency -snippets-file=%s -execution-mode=subprocess | FileCheck %s

# CHECK: measurements:
# CHECK-NEXT: value: {{.*}}, per_snippet_value: {{.*}}

# LLVM-EXEGESIS-DEFREG XMM1 42
# LLVM-EXEGESIS-DEFREG XMM2 42
# LLVM-EXEGESIS-DEFREG XMM3 42
vhaddps       %xmm2, %xmm2, %xmm3
