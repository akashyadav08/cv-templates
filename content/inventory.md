# Source inventory

Every reusable, **true** piece of material, in one place. Tailoring selects from here;
nothing is invented and nothing is lost when a role doesn't need it.

Tags mark what a line is good for: `[risk] [pricing] [ai/ml] [trading] [data-eng]
[client] [research] [validation]`

Provenance: `(W)` = Akash's own edited Westpac draft — his wording, authoritative.
`(T)` = existing `profiles/*.tex`. `(A)` = `profiles/_archived-blackrock.tex`.

---

## Mercor — Independent Contractor, 05/2026 – Present

Role line variants:
- "Independent Contractor --- AI Model Evaluation and Benchmark Design" (W) `[ai/ml] [validation]`
- "Independent Contractor -- LLM Evaluation" (T) — shorter, for non-AI roles

Bullets:
- Designed and evaluated **black-box benchmark functions** for AI models, calibrating
  difficulty from observed solver performance distributions and using pre-committed
  sample sizes for statistically defensible comparisons. (W) `[ai/ml] [validation]`
- Applied **blind evaluation protocols and pre-committed decision rules**, explicitly
  separating proven findings from working hypotheses and challenging unsupported
  assumptions, methodological weaknesses and overclaims. (W) `[validation] [ai/ml]`
- Designed structured edge-case tests and Git-based review workflows to identify
  numerical, reasoning and robustness failures in AI-generated mathematical,
  statistical and coding outputs. (W) `[validation]`
- Evaluated AI-generated mathematical, statistical and coding solutions for numerical
  correctness, reasoning quality, reproducibility and robustness across edge cases. (T)
  `[validation]` — compressed single-bullet version

## AllocQ — Creator / Quantitative Analyst, 05/2025 – Present

Platform-name variants (pick to match the JD):
- "AllocQ, Quantitative Research Platform" (W) `[research]`
- "AllocQ, Portfolio Analytics and Optimisation Platform" (T) `[risk]`
- "AllocQ, Systematic Research and Optimisation Platform" (T) `[trading]`

Subtitle variants:
- "Creator / Quantitative Analyst --- Model Development and Validation" (W) `[validation]`

Bullets:
- Built and deployed **AllocQ** (allocq.com), a functional **Python/SQL** quantitative
  research platform covering a universe of **1,600+ funds**, with automated time-series
  ingestion and validation using **Spark, Databricks and Snowflake**, and an
  **LLM-powered user-facing research assistant** with prompt constraints and output
  checks. (W) `[data-eng] [ai/ml] [research]`
- Developed model-validation workflows with **PCA/PCR imputation**, walk-forward and
  sensitivity testing, and **11 risk and performance metrics**, evaluating model behaviour
  under controlled perturbations and changing market conditions before outputs were used
  for decisions. (W) `[validation] [risk]`
- Developed portfolio construction and validation workflows using **SLSQP constrained
  optimisation** and 11 risk/performance metrics, testing strategies under drawdown,
  concentration, turnover and implementation constraints. (T) `[risk] [trading]`
  — drop "SLSQP" for non-finance readers
- Produced a **custom risk-analysis report for a venture capital firm's** highly liquid
  fund universe, plus platform-generated reports explaining portfolio metrics, risk
  exposures and decision-support insights. (T/A) `[client] [risk]`
- Automated NAV/reference-data refresh, missing-data and exception checks, and backfill
  workflows. (T) `[data-eng]`
- Portfolio construction and **rebalancing** workflows with dedicated backtest analysis,
  supporting drawdown control and concentration monitoring. (A) `[risk]`

## UPF — Research Associate, 09/2023 – 08/2025

Subtitle variant carrying credentials (preferred):
- "Research Associate --- with Prof. Eulalia Nualart $\vert$ arXiv:2503.03302, funded by
  the **BBVA Foundation**" (W)

Bullets:
- **Lead author** on Diff-LSTM, a **custom-loss recurrent architecture** that jointly
  learns target values and pathwise derivative information; benchmarked against
  established recurrent architectures under a standardised experimental framework,
  achieving **~45% average RMSE reduction** with **~23% fewer parameters**. (W)
  `[ai/ml] [research]`
- Led model development and validation end to end, from problem formulation and
  literature review through architecture design, experimental methodology, reproducible
  implementation and manuscript preparation; evaluated convergence and forecast
  robustness under strict out-of-sample checkpoints with academic collaborators. (W)
  `[validation] [research]`
- Developed **pricing and Greeks estimation workflows** to test convergence and stability
  under limited-sample simulation settings, supporting sensitivity analysis and
  derivatives-risk work. (A/T) `[pricing] [risk]`
- Estimated **deltas under the Heston stochastic-volatility model** via Monte Carlo and
  Malliavin calculus, with convergence, numerical-stability and sensitivity testing. (T)
  `[pricing]`

## ESADE / UPF — Teaching Assistant, 09/2024 – 02/2025

- Subtitle: "Teaching Assistant --- Machine Learning, Optimisation, Statistics" (W)
- Taught postgraduate machine learning, regression, hypothesis testing and numerical
  optimisation, **communicating complex technical concepts** to finance and data science
  audiences. (W) `[client] [ai/ml]`
- Supported postgraduate teaching in portfolio optimisation; used the **Bloomberg
  Terminal** for stock/ETF data feeding portfolio inputs, risk metrics and model output.
  (T) `[risk] [trading]`
- Assisted Master of Finance students in Financial Modelling — portfolio optimisation,
  regression, hypothesis testing, **Excel/VBA**-based investment work. (A) `[client]`

## Education — selectable lines

BSE, Master in Data Science (Methodology), GPA 9.02/10, 2023:
- **ML & AI:** penalised likelihood, Bayesian model selection, LDA/HMMs, PCA, clustering;
  deep networks (CNNs, LSTM/GRU, Transformers, flow-based generative models); **RAG
  architectures and their evaluation**; out-of-sample model evaluation. (W) `[ai/ml]`
- **Finance & Risk:** Heston and SABR stochastic volatility, ARMA–GARCH, Value at Risk and
  Expected Shortfall, option pricing and stochastic calculus. (W) `[risk] [pricing]`
- **Derivatives projects:** SABR calibration to market smiles in Python/SciPy; 0DTE option
  pricing; implied-volatility smile construction. (T) `[pricing] [trading]`
- Thesis: *Differential ML to predict Heston model deltas* (simulated Monte Carlo data
  using Malliavin calculus). (W/T) `[pricing] [ai/ml]`

IISc, MSc + BSc (Research) Physics, First Class, 2017:
- Probability models, stochastic processes, algorithms and data structures, linear
  algebra, advanced mathematical and statistical physics. (W)
- **DST-INSPIRE Fellow 2012–2017** (top 1% nationally, Department of Science and
  Technology, Government of India). (W)
- Thesis: *Out-of-time-order correlator in 2d Conformal Field Theory.* (T) `[research]`

## Skills lines — selectable blocks

- **AI Model Risk & Validation:** independent model validation, LLM and generative AI
  evaluation, benchmark design, blind evaluation protocols, out-of-sample and edge-case
  testing, robustness and sensitivity testing, output guardrails, reproducibility, model
  documentation. (W) `[ai/ml] [validation]`
- **Deep Learning & Machine Learning:** custom architecture and loss-function design,
  recurrent architectures (LSTM/GRU), CNNs, Transformers, flow-based models, gradient
  boosting, penalised regression; PyTorch, TensorFlow, scikit-learn, XGBoost. (W) `[ai/ml]`
- **Generative & Agentic AI:** LangGraph, OpenAI Agents SDK, LangChain; RAG design and
  evaluation. (W) `[ai/ml]`
- **Statistical Methods:** Bayesian inference, model selection, stochastic processes,
  Monte Carlo, PCA/PCR, time-series forecasting. (W)
- **Programming & Data:** Python (NumPy, SciPy, pandas), SQL, R, C++, Git, Bash; Spark,
  Databricks, Snowflake, MySQL; OOP in Python. (W)
- **Investment Risk & Model Validation:** portfolio construction, risk/performance
  analytics, VaR/ES, drawdown and concentration analysis, backtesting, Greeks,
  sensitivity analysis, out-of-sample testing. (T) `[risk]`
- **Trading & Risk:** systematic strategies, portfolio construction, VaR/ES, drawdown
  analysis, robustness testing, derivatives, Heston/SABR. (T) `[trading]`
- **Statistical Computing:** PyMC, Stan/RStan, mclust, glmnet, rugarch, Gurobi, Qiskit. (T)
- **Reporting & Visualisation:** Plotly, ggplot2, Power BI; portfolio diagnostics, risk
  dashboards, automated quantitative reports. (T) `[client]`

## Achievements / certifications

- **IMC Prosperity 4** — ranked **312 / 18,000 teams** globally; **38th** in manual
  trading. (W) `[trading]` — lead with it for trading desks, one skills-block line otherwise
- Strategies developed under market-making, pricing and execution constraints. (T) `[trading]`
- **IBM Qiskit** Global Summer School 2025 (Quantum Excellence badge). (T)
- **FRM Part I** (GARP); Part II candidate Nov 2026. (W)
- **Databricks SQL** certification. (T — appears only in `investment-analytics`; confirm)

---

## Gaps — needs Akash

Material I have no source for and will not invent:

- Any **production C++** artefact. C++ is claimed in every skills line with nothing behind
  it; trading and pricing screens test this. A public repo would close it.
- **Australian financial-institution** experience — none on record. Agency and bank
  shortlists weight local-market experience heavily.
- Anything on the **AllocQ LLM assistant** beyond the one Westpac sentence: model, retrieval
  design, eval approach, usage.
- Further **Mercor** detail beyond the three Westpac bullets.
- **Tabcorp / Sportsbet-relevant** sports-modelling material — `sports-trading.tex` currently
  leans on generic quant content.
- Whether the **Databricks SQL** certification is current.
