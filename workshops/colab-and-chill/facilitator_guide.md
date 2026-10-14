# Colab and Chill Facilitator Guide (90 Minutes)

- [Back to the README](../../README.md)

**Main story:** an ED director's question → check the data → find what drives waits → catch what the AI and
the documentation got wrong → takeaways you can defend.

**Workflow lesson:** knowers (NotebookLM) read and cite sources; doers (Gemini in Colab) write and run code.
People frame the question with PARTS, check every number against code and own the interpretation.

---

## Before the Session

- [ ] Commit and push today's changes. The Colab badges open the notebooks from GitHub `main`.
- [ ] Open the learner notebook from the README's first **Open in Colab** badge with an @ncsu.edu account.
      Choose **File → Save a copy in Drive** and run the three load cells (5,000 rows × 19 columns).
- [ ] Open Gemini from the spark icon (✦) at the bottom of the notebook and run the Trust Check prompt once.
      Gemini needs an 18+ account, and school-managed accounts may have it turned off; a personal Google
      account works as a backup. If Gemini doesn't appear, check **Settings → AI Assistance** for "Hide
      generative AI features".
- [ ] In NotebookLM, create a notebook from the 8 PDFs in [`notebookLM/`](notebookLM/) (about 13 MB) and run
      the knower prompt below once, so you know what it returns.
- [ ] Open these tabs: the README (for the link), your Drive copy, the solutions notebook, NotebookLM and this
      guide. Set the browser zoom to 125-150%.
- [ ] Have the evaluation link ready: [go.ncsu.edu/dss-workshop-eval](https://go.ncsu.edu/dss-workshop-eval).

## Run Sheet

| Time | Segment | You | Participants | Anchor line |
|---|---|---|---|---|
| 10:00 | Welcome and setup (8 min) | Share the link; read the one rule | Open the notebook, save a copy, open Gemini | "Every number today comes from code you ran." |
| 10:08 | Knowers vs. doers (10 min) | NotebookLM demo with the 8 papers | Watch, or try it | "Knowers read and cite; doers compute." |
| 10:18 | PARTS (7 min) | Typical prompt vs. PARTS prompt | Read along in the notebook | "Vague prompt, confident answer." |
| 10:25 | Load and 🔎 Trust Check (12 min) | Run the load together; demo the loop once | Prompt, run, compare | "Don't analyze what you haven't checked." |
| 10:37 | 3.1 Satisfaction (8 min) | Point at the bar labels | Prompt, compare | "Look at the chart, not just the code." |
| 10:45 | 🕐 The Label vs. the Clock (10 min) | The reveal | Prompt, compare | "Two columns say when; only one is the clock." |
| 10:55 | 💬 What Drives Wait Times? (12 min) | Confounding | PARTS prompt, compare | "Is that a cause, or does it ride along with urgency?" |
| 11:07 | 🧪 Check the Documentation (10 min) | Ask without code first, then with code | Prompt, compare | "Ask for code, not answers." |
| 11:17 | ✍️ Takeaways and wrap-up (8 min) | 60-second close; evaluation link | Write 3 takeaways | "The numbers are computed; the meaning is yours." |
| 11:25 | Questions (5 min) | | | |

**Running behind?** Do 3.1 as a quick instructor demo. Show the NotebookLM answer you ran before class instead
of running it live. In the documentation check, do claims 2 and 3 only. Don't cut the label-vs-clock reveal.

## Step by Step

### 10:00 Welcome and Setup (8 min)

1. Share the notebook link (README → first **Open in Colab** badge). Everyone chooses **File → Save a copy in
   Drive**. If they skip the copy and see "This notebook was not authored by Google", they click **Run anyway**.
2. Everyone opens Gemini (✦) and accepts the AI terms if asked.
3. Scroll to **🧭 How This Workshop Works** and read the one rule aloud.

**Talking points**
- **What this is:** 90 minutes of hands-on, AI-assisted exploratory data analysis in Colab. Nothing to install.
- **Vibe coding:** you describe the analysis in plain language, Gemini writes the code, and you check what it
  did. Compare outputs, not code: your code will look different from your neighbor's, and that's fine.
- **The scenario:** an ED director asks, "When are our waits worst, what drives them, and where should we add
  staff?"
- **The data:** 5,000 *simulated* ER visits at five hospitals in 2024. Its overview file says the generator's
  logic was designed with ChatGPT, so findings describe the simulation, not real hospitals.

### 10:08 Knowers vs. Doers (10 min)

1. Show the knowers vs. doers table in the notebook.
2. In NotebookLM (8 papers loaded), paste this prompt. It's also your first PARTS example:

   ```text
   Persona: You're a research assistant for an emergency department operations team.
   Aim: Summarize what these sources say drives ED wait times and patient satisfaction.
   Recipients: A data analyst about to explore a dataset with urgency level, nurse-to-patient ratio,
   specialists, beds, time of day, day of week and season.
   Theme: Use only these sources and cite them. Say where they disagree or don't cover a factor.
   Structure: A table with three columns: factor, expected effect on wait time, source.
   ```

3. Point out the citations and what the sources *don't* cover. These are hypotheses to test in the data.
4. Then ask NotebookLM a numbers question: "What's the average wait for Critical patients in our dataset?"
   It has no data and runs no code, so it can't know. If it offers a number anyway, that's the hallucination
   lesson arriving early.

### 10:18 PARTS (7 min)

1. Walk through the PARTS table in the notebook (Persona, Aim, Recipients, Theme, Structure).
2. Contrast the typical prompt, "Here's our ER data. When are wait times worst, and what staffing changes
   should we make? Make some charts.", with the PARTS prompt in **💬 What Drives Wait Times?** (section 3.4).
3. Ask: "Which parts stop Gemini from guessing?" Draw out *Theme* (compute every number with code; keep all
   four urgency levels) and *Structure* (exact tables, one chart, bullets that cite numbers).

### 10:25 Load and Trust Check (12 min)

1. Run the three load cells together. Check: 5,000 rows, 19 columns.
2. Paste the 🔎 Trust Check prompt into Gemini on the projector. Read the code aloud before running it, and
   point out that it doesn't change `df`.
3. Participants do the same and compare with the checkpoint.
4. Ask: "Two columns describe when a patient arrived. Which one do you trust?"

**Check:** no missing values or duplicates; four urgency levels (Critical 1,242, High 1,245, Medium 1,291,
Low 1,222); the label is `Night`, not `Late Night`; Day of Week and the total wait are consistent in every
row; every Time of Day label appears at all 24 clock hours.

### 10:37 3.1 Satisfaction (8 min)

1. Participants run the satisfaction prompt.
2. Have them look at the chart: does each percentage sit on its own bar?

**Check:** 1: 1,538 (30.8%), 2: 605 (12.1%), 3: 873 (17.5%), 4: 1,429 (28.6%), 5: 555 (11.1%); mean 2.77,
median 3, mode 1.

### 10:45 The Label vs. the Clock (10 min)

1. Participants run the 🕐 prompt in section 3.2.
2. Land it: grouped by the label, waits run from 52 min (Early Morning) to 100 min (Evening). Grouped by the
   actual arrival hour, they're flat: 73-90 min in every hour. The label and the clock are independent
   (chi-square p ≈ 0.7).
3. Name the consequence: the heatmaps in 3.2 and the Early Morning test in 3.3 describe the label, not when
   patients arrived. The overview file's "peak hours in afternoons and evenings" also holds only for the
   label.
4. Optional story: this notebook was used with the same dataset before, and nobody checked the label against
   the clock. Checking is a habit, not a talent.

### 10:55 What Drives Wait Times? (12 min)

1. Participants paste the PARTS prompt in section 3.4.
2. **Check:** Critical 18.4, High 43.2, Medium 93.7, Low 173.5 min; by nurse ratio 1-5: 16.1, 20.7, 63.7,
   107.3, 172.1 min.
3. Ask: "Would adding nurses cut waits?" Then point at the urgency × ratio table. Each urgency level has only
   two ratios (Critical 1-2, High and Medium 3-4, Low 4-5), and within a level the ratio barely matters
   (High 39 vs. 48 min, Medium 86 vs. 102, Low 175 vs. 172). The overall ratio effect mostly rides along
   with urgency.

### 11:07 Check the Documentation (10 min)

1. First, everyone asks Gemini **without** code whether urban hospitals have shorter waits for critical
   cases. Ask where its answer came from.
2. Then they paste the 🧪 prompt, which tests four claims from the overview file with code.
3. **Check:** Mondays busiest, supported (768 vs. 741 on Tuesday). Winter busiest, **not supported** (Summer
   1,281 vs. Winter 1,258). Urban shorter critical waits, **not supported** (18.5 vs. 18.1 min). Critical
   shorter waits and higher satisfaction, supported (18.4 min and 4.38 vs. 173.5 min and 1.10).

### 11:17 Takeaways and Wrap-Up (8 min)

1. Everyone writes three takeaways in **✍️ Your Takeaways**, each citing a number, plus one limitation.
2. Ask 1-2 people to read one aloud. Push for a number, and for hedged wording on causes.
3. Give the 60-second close (below), share the evaluation link and point to GetDataHelp and consultations.

## Answer Key

Computed from `ER Wait Time Dataset.csv` (5,000 rows × 19 columns).

| Question | Answer |
|---|---|
| Data quality | No missing values, no duplicate rows; 5,000 unique visit and patient IDs |
| Consistent fields | Day of Week and Season match the date; Total Wait = registration + triage + time to professional |
| Inconsistent fields | Time of Day vs. the clock (independent); `Facility Size (Beds)` changes from visit to visit at the same hospital; all 253 "Left Without Being Seen" visits still have a time to see a professional |
| Satisfaction | 1: 30.8%, 2: 12.1%, 3: 17.5%, 4: 28.6%, 5: 11.1%; mean 2.77, median 3, mode 1 |
| Wait time overall | Mean 81.9 min, median 60, max 442 |
| Wait by urgency | Critical 18.4, High 43.2, Medium 93.7, Low 173.5 min |
| Satisfaction by urgency | Critical 4.38, High 3.56, Medium 2.05, Low 1.10 |
| Wait vs. satisfaction | Correlation -0.87 |
| Wait by label vs. by clock | Label: 52-100 min; clock hour: 73-90 min |
| Visits | Monday 768 (highest); Summer 1,281 (highest season); about 2.7 visits per hospital per day |
| Critical wait by region | Urban 18.5, Rural 18.1 min |

## Coaching: Common Gemini Slips

| You'll see | Why it matters | Nudge |
|---|---|---|
| An urgency table or chart with only Low, Medium and High | Critical (1,242 visits) silently dropped, often by a category order that leaves it out | "Did all four urgency levels show up?" |
| An empty "Late Night" column | The data says "Night" | "Check the unique values first." |
| Percent labels on the wrong bars | Labels placed in `value_counts()` order while the bars are in rating order | "Does each label sit on its own bar?" |
| Time-of-day patterns built on the label | The label doesn't match the clock | "Which of the two time columns did you use?" |
| Code that overwrites `df` columns (for example with `pd.Categorical`) | Later cells change without any error | "Make a copy, or pass `order=` to the chart." |
| "More nurses per patient means shorter waits" stated as a cause | The ratio tracks urgency | "Compare within one urgency level." |
| A number in a chat reply that no code produced | That's the hallucination risk | "Show me the code that computed it." |

## Fallbacks

| Problem | Fallback |
|---|---|
| Gemini unavailable (school account, under 18, daily limit) | A personal Google account; pair up; follow the projector; the reference code below |
| "This notebook was not authored by Google" | Click **Run anyway**, or save a copy in Drive first |
| The clone cell fails | `df = pd.read_csv("https://raw.githubusercontent.com/NCSU-Libraries/ai-in-data-science/main/workshops/er_wait_time/data/ER%20Wait%20Time%20Dataset.csv")` |
| NotebookLM unavailable | Show the answer you ran before class and move on to PARTS |
| A participant is lost | The solutions notebook (README → second badge) |

## Reference Code (if Gemini Stalls)

The solutions notebook doesn't cover the new steps yet. These cells reproduce their checkpoints.

**🔎 Trust Check**

```python
visit = pd.to_datetime(df['Visit Date'])
print(df.shape, "|", df.isna().sum().sum(), "missing |", df.duplicated().sum(), "duplicate rows")
for col in ['Region', 'Season', 'Day of Week', 'Time of Day', 'Urgency Level', 'Patient Outcome']:
    print(df[col].value_counts(), "\n")
print("Day of Week matches the date:", (visit.dt.day_name() == df['Day of Week']).all())
parts = df[['Time to Registration (min)', 'Time to Triage (min)', 'Time to Medical Professional (min)']].sum(axis=1)
print("Total wait = sum of the three parts:", (parts == df['Total Wait Time (min)']).all())
pd.crosstab(df['Time of Day'], visit.dt.hour)
```

**🕐 The Label vs. the Clock**

```python
visit = pd.to_datetime(df['Visit Date'])
display(df.groupby('Time of Day')['Total Wait Time (min)'].mean().round(0))
display(df.groupby(visit.dt.hour)['Total Wait Time (min)'].mean().round(0))
```

**💬 What Drives Wait Times?**

```python
w = 'Total Wait Time (min)'
display(df.groupby('Urgency Level')[w].agg(['mean', 'count']).round(1))
display(df.groupby('Nurse-to-Patient Ratio')[w].mean().round(1))
display(df.pivot_table(index='Urgency Level', columns='Nurse-to-Patient Ratio', values=w, aggfunc='mean').round(0))
```

**🧪 Check the Documentation**

```python
w = 'Total Wait Time (min)'
display(df['Day of Week'].value_counts())
display(df['Season'].value_counts())
display(df[df['Urgency Level'] == 'Critical'].groupby('Region')[w].mean().round(1))
display(df.groupby('Urgency Level')[[w, 'Patient Satisfaction']].mean().round(2))
```

## 60-Second Close

- **Biggest driver:** urgency. Critical patients wait 18 minutes on average, Low-urgency patients 174, and
  satisfaction falls as waits rise (correlation -0.87).
- **Biggest catch:** the Time of Day label doesn't match the clock, so the time-of-day "patterns" belong to
  the label, not to when patients arrived.
- **Biggest trap:** the nurse-ratio effect mostly rides along with urgency, and 2 of the 4 documentation claims
  we tested didn't hold up.
- **Workflow:** NotebookLM read the literature, Gemini wrote the code, and you framed the question with PARTS,
  checked every number and own the conclusions.
