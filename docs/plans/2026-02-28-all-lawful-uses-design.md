# All Lawful Uses — Site Design

## Concept

Single longform scrolling page analyzing the gap between the OpenAI–DoW agreement's letter and its spirit. Targets technical, well-intentioned readers who believe the agreement may be sufficient. Narrative-driven with inline expandable footnotes for legal citations.

## Structure

1. **Title block** — "All Lawful Uses" with one-sentence thesis and date
2. **The Core Gap** — Agreement anchors to existing law; existing law has known gaps; every scenario lives in those gaps. Cite Axios reporting, OpenAI announcement.
3. **Five scenario sections**, each following:
   - The Loophole (what current law permits, cited)
   - The Scenario (concrete narrative)
   - Why It Complies (specific agreement language)
   - Why It Matters (functional outcome vs. spirit)
   - Variant (optional expansion)
   - Inline objection handling where needed
4. **The Structural Problem** — synthesis, legitimacy-cover argument
5. **The Alternative** — Anthropic's functional-outcome approach
6. **Footer** — sources, date

## Scenarios

1. "Not Surveillance" — commercially available data + AI = mass profiling. Must address Carpenter v. US (2018) and explain why gap persists.
2. "Not Autonomous" — rubber-stamp targeting loops. Careful Lavender attribution. Include time-compressed variant.
3. "Not Domestic" — Section 702 incidental collection, backdoor searches.
4. "Not Mass" — criteria-based selection matching millions. Strengthen with FISA court precedent.
5. "Cloud-to-Kill Chain" — cloud/edge distinction as architectural fiction.

## Key Arguments to Make Explicitly

- **Legitimacy cover**: The agreement doesn't just fail to prevent — it provides political cover that reduces pressure for real regulation. An imperfect agreement marketed as sufficient is worse than no agreement that would leave oversight pressure intact.
- **Marketing vs. substance**: "Red lines" on "mass surveillance" and "autonomous weapons" communicate to normal readers that these things won't happen. The gap between what was communicated and what was agreed is the gap we're analyzing.
- **Functional vs. legal framing**: Anthropic wanted restrictions on outcomes regardless of legality. OpenAI agreed to restrictions that mirror what's already illegal. The delta is the analysis.

## Objections to Address

- Carpenter narrows third-party doctrine → yes, but narrowly; data broker purchases continue
- "Could happen without OpenAI" → legitimacy-cover argument
- Lavender sourcing contested → careful attribution, scenario doesn't depend on exact claims
- Anthropic is self-serving → possible, irrelevant to the analysis
- "Not Mass" feels like strawman → ground in FISA court precedent
- "Spirit never existed" → marketing implied meaningful safeguards beyond legal compliance
- "Permitted ≠ likely" → implicitly addressed by DoW's rejection of Anthropic's functional restrictions

## Visual Design

- Sober institutional tone
- Serif body text (Georgia/system), clean sans-serif headings
- Dark charcoal on off-white, subtle red accent for key legal terms
- Fixed left sidebar nav (desktop), hamburger (mobile)
- Expandable footnotes: superscript → inline panel on click

## Technical

- Single HTML file, embedded CSS/JS, no build system
- No external dependencies beyond system fonts
- Responsive
- GitHub Pages via gh-pages branch
- Terminology: Department of War (DoW) throughout
