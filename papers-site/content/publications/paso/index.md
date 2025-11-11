---
title: 'PASO: Step Parallel Stochastic Optimization'
authors:
  - 'Jianrong Lu'
  - 'Zhuoya Gu'
  - 'Jianhai Chen'
  - 'Yechao Zhang'
  - 'Haobo Li'
  - 'Zhiyu Zhu'
  - 'Minghui Yang'
  - 'Junwei Liu'
  - 'Jian Wang'
  - 'Qinming He'
  - 'Hui LIU'
  - 'Junhui Hou'
date: '2025-10-15T00:00:00Z'
publishDate: '2025-10-15T00:00:00Z'
publication_types: ['paper-conference']
# publication: In *International Conference on Learning Representations (ICLR)*
# publication_short: In *ICLR 2026*
abstract: |
  我们提出 **PASO**（Parallel Step Optimizer），从动态系统视角将自回归梯度下降过程重写为求解三角非线性方程组（TNE），
  继而实现跨时间步的并行梯度计算。理论上证明该 TNE 系统存在唯一解并与传统 GD 轨迹等价，且通过数值求解可在更少步数中逼近同样的迭代结果。
  汇聚这些洞见后，PASO 可以将 SGD/Adam 等优化器的梯度步骤减少 91×，并在大规模模型上取得高达 7.5× 的端到端加速而不损失质量。
summary: 'PASO reframes autoregressive SGD/Adam as triangular nonlinear equations and solves them in parallel, reducing gradient steps by 90×+ without quality loss.'
tags:
  - Optimization
  - Parallel Training
  - Large Language Models
featured: true
links:
  - type: pdf
    url: /files/paso/PASO.pdf 
  - type: source
    url: /files/paso/PASO.tex
  - type: github
    url: https://github.com/Jianrong-Lu/ParaSolver
image:
  caption: '⚠️ 图像占位：请将示意图保存为 static/images/paso/featured.jpg 并更新此处路径。'
  focal_point: ''
  preview_only: false
---

## Abstract

This work reframes autoregressive gradient descent (GD)—including SGD and Adam—as solving a system of triangular nonlinear equations (TNEs).  
Solving the TNE system yields a trajectory identical to classical GD but allows step-parallel gradient computation.  
Building upon this viewpoint, PASO accelerates optimizers on workloads such as **Llama-3.2-1B**, cutting gradient steps by **91×** and wall-clock time by **7.5×** without hurting quality.

## Methodology

1. **Triangular Nonlinear Equation (TNE) Reformulation**  
   The entire SGD/Adam trajectory is rewritten as a coupled TNE system whose solution exactly matches the autoregressive iteration.  
   This insight lets us decouple temporal dependencies and reason about GD as a global solve.

2. **Parallel Solver for Optimizers**  
   By solving the TNE blocks jointly, PASO evaluates gradients for many steps simultaneously, achieving massive step-level parallelism.  
   The solver is compatible with momentum terms and bias corrections used in SGD/Adam.

3. **Theoretical Guarantees**  
   The TNE system has a unique solution; solving it converges to the GD trajectory in equal or fewer iterations.  
   PASO therefore inherits convergence guarantees of the base optimizer while changing only the execution schedule.

![PASO Overview](/images/paso/PASO_v10.png)

## Experimental Results

- **Step Reduction**: Up to **91×** fewer GD iterations for the same optimization horizon.  
- **Wall-Clock Speedup**: Up to **7.5×** acceleration on large models such as *Llama‑3.2‑1B*, measured end-to-end.  
- **Model Quality**: No measurable drop in perplexity or downstream metrics compared with baselines.  
- **Scalability**: Benefits extend to different backbone optimizers (SGD, Adam, AdamW) and both vision/NLP workloads.

### Step Block Size vs. Final Quality
![Window Size Ablation](/images/paso/CIIFAR10_PandIter.png)

Larger PASO windows shrink the required iterations (down to 5k at \(p=19\)) while
keeping CIFAR-10 accuracy within 1% of the serial baseline. This serves as our primary
“step block size vs. quality” visualization.
### Solver Precision vs. Convergence Stability
![Tolerance vs. Metrics](/images/paso/EMA&Tol_Acc_Pre_Rec_F1_Itr_v4.png)

Tightening the PASO tolerance (and EMA decay) stabilizes precision/recall/F1 while
slightly increasing iterations. This figure highlights the trade-off between solver
accuracy and wall-clock cost.
### Hardware Utilization & Parallel Efficiency
![Cost Ratio vs. Window Size](/images/paso/Speedup_Ratio.png)

The measured cost ratio \(m = pK/T\) remains ≈1 even as PASO increases the window size,
showing that parallel step blocks don’t inflate total gradient FLOPs—i.e., GPUs/TPUs stay
busy without extra overhead. Replace this with an actual utilization plot once you have
profiling traces.
