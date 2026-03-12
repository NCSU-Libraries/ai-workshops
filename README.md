<div align="center">

<a href="https://www.lib.ncsu.edu/" aria-label="nc state university libraries logo"><img src="assets/lib_logo_whiteBG.svg" width="400" alt="NC State University Libraries Logo" /></a>

<h2>NC State University Libraries AI Workshops</h2>

<a href="https://www.lib.ncsu.edu/workshops"><img alt="NC State Libraries Workshops" src="https://img.shields.io/badge/NC%20State%20Libraries-Workshops-red"></a>
<a href="https://www.lib.ncsu.edu/staff/department/data-science-services"><img alt="Data Science Services" src="https://img.shields.io/badge/Data%20Science%20Services-Libraries-red"></a>
<a href="https://go.ncsu.edu/getdatahelp"><img alt="GetDataHelp" src="https://img.shields.io/badge/Get%20Data%20Help-go.ncsu.edu%2Fgetdatahelp-red"></a>
<a href="mailto:getdatahelp@ncsu.edu"><img alt="Email: getdatahelp@ncsu.edu" src="https://img.shields.io/badge/Email-getdatahelp%40ncsu.edu-red"></a>
<a href="https://github.com/NCSU-Libraries/ai-workshops/actions/workflows/deploy-page.yml"><img alt="Deploy slides to GitHub Pages" src="https://github.com/NCSU-Libraries/ai-workshops/actions/workflows/deploy-page.yml/badge.svg"></a>
<br/>

</div>

## Colab and Chill: A Vibe Coding Approach to Exploratory Data Analysis using AI

### Student Template
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NCSU-Libraries/ai-workshops/blob/main/workshops/colab-and-chill/colab-and-chill.ipynb)

**`workshops/colab-and-chill/colab-and-chill.ipynb`** - Interactive workshop notebook with:
- guided activities
- accessible notebook structure
- prompt-writing practice
- hands-on Google Colab workflow

### Solutions Notebook
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NCSU-Libraries/ai-workshops/blob/main/workshops/colab-and-chill/colab-and-chill-solutions.ipynb)

**`workshops/colab-and-chill/colab-and-chill-solutions.ipynb`** - Reference notebook with:
- completed examples
- worked-through prompts and outputs
- full solution cells

## Overview

Join us for a relaxed, hands-on session where we bring the "vibe coding" philosophy to data science.

In *Colab and Chill*, we ditch the stress of perfect syntax and focus on the high-level "vibe" of your analysis using Google Colab's built-in AI tools. Whether you are a coding novice or a seasoned researcher, this workshop will guide you through the rapidly evolving AI landscape, helping you distinguish between tools that "know" and tools that "do".

You will learn to use the PARTS framework to support exploratory data analysis, generate inspectable code, and refine your workflow through iteration. This workshop incorporates hands-on work, and there will be plenty of time for questions. No software installation is needed.

## Learning Objectives

By the end of this workshop, participants will be able to:

- **Navigate the AI landscape:** Differentiate between "Knower" tools and "Doer" tools to choose the right AI assistant for each stage of work.
- **Engineer effective prompts:** Apply the **PARTS** framework: Persona, Aim, Recipients, Theme, Structure.
- **Perform AI-assisted EDA:** Use Google Colab's integrated AI features to explore data through code generation, summaries, and visualizations.
- **Mitigate hallucinations:** Ask AI to write code rather than perform unsupported reasoning so results are more reproducible and verifiable.

## Quick Start

### Option 1: Open in Google Colab
Click one of the "Open in Colab" badges above to run the workshop directly in your browser.

### Option 2: Run locally
1. Clone this repository:
   ```bash
   git clone https://github.com/NCSU-Libraries/ai-workshops.git
   cd ai-workshops
   ```
2. Install required packages:
   ```bash
   pip install -r requirements.txt
   ```
3. Launch Jupyter:
   ```bash
   jupyter notebook workshops/colab-and-chill/colab-and-chill.ipynb
   ```

## Workshop Details

- **Workshop folder:** [`workshops/colab-and-chill/`](workshops/colab-and-chill/)
- **Learner notebook:** [`workshops/colab-and-chill/colab-and-chill.ipynb`](workshops/colab-and-chill/colab-and-chill.ipynb)
- **Solutions notebook:** [`workshops/colab-and-chill/colab-and-chill-solutions.ipynb`](workshops/colab-and-chill/colab-and-chill-solutions.ipynb)
- **Slide deck source:** [`workshops/colab-and-chill/index.qmd`](workshops/colab-and-chill/index.qmd)

## Using Colab

- Open the notebook in Colab and use "Copy to Drive" if you want to save changes.
- Run cells from top to bottom.
- Follow the prompts and exercises in order.
- Use the solutions notebook after attempting the learner notebook yourself.

## Troubleshooting

- If a notebook opens read-only, use "Copy to Drive" before editing.
- If a browser extension blocks some Colab UI, try a private or incognito window.
- Prefer a local environment? See [`LOCAL.md`](LOCAL.md).
