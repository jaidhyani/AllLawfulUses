# Letter vs. Spirit: Adversarial Scenarios for the OpenAI–DoW Agreement

*Red-team analysis, February 28, 2026*

## The Core Gap

On the night of February 27, 2026, Sam Altman announced that OpenAI had reached an agreement with the Department of War to deploy its models on classified networks. The agreement includes two stated "red lines":

1. **Prohibition on domestic mass surveillance**
2. **Human responsibility for the use of force, including for autonomous weapon systems**

Critically, the Axios reporting notes that "the restrictions in the agreement reflect existing U.S. law and the Pentagon's policies, and **the intention was not to invent new legal standards**."

This is exactly where Anthropic drew the line differently. Dario Amodei's position was that *the law has not caught up with AI*—that current legal frameworks contain gaps that, when combined with frontier AI capabilities, permit activities that are functionally mass surveillance or functionally autonomous killing, while remaining technically lawful.

OpenAI's agreement, by anchoring to existing law rather than functional outcomes, inherits every one of those gaps.

---

## Scenario Category 1: "Not Surveillance" — Aggregate Intelligence from Lawful Data Acquisition

### The loophole

Under current law, the U.S. government can purchase commercially available data—location records, browsing history, app telemetry, social media activity, association graphs—from data brokers without a warrant. The Intelligence Community's own 2022 declassified report acknowledged this raises privacy concerns. There is no statutory prohibition on purchasing this data at scale, nor on using AI to analyze it.

### The scenario

The DoW contracts with data brokers for commercially available datasets covering cell-phone location data, social media posts, and web browsing patterns for tens of millions of Americans. This data is fed into OpenAI models operating on classified networks. The models are tasked with:

- Identifying patterns of association between individuals and groups flagged as domestic security concerns
- Building behavioral profiles that predict attendance at protests, political organizing, or other constitutionally protected activities
- Flagging anomalous behavior patterns for follow-up investigation

**Why this complies with the letter:** None of this constitutes "surveillance" in the traditional legal sense. The government is not wiretapping anyone. It is not conducting searches. It is purchasing data that individuals have already made available to commercial entities, which is legal under *Smith v. Maryland*'s third-party doctrine and subsequent rulings. No court order is required. The AI is analyzing purchased data, not intercepting communications.

**Why this violates the spirit:** This is precisely the scenario Amodei described: "Powerful AI makes it possible to assemble this scattered, individually innocuous data into a comprehensive picture of any person's life—automatically and at massive scale." The functional outcome is indistinguishable from mass domestic surveillance. Every American with a smartphone is having their movements, associations, and behaviors profiled. But because each individual data purchase is lawful, and because "surveillance" is legally understood as active monitoring rather than passive aggregation, the agreement's prohibition doesn't trigger.

### Variant: Social media OSINT at scale

OpenAI models are deployed to continuously ingest and analyze all public social media posts by Americans, building real-time sentiment maps, identifying "radicalization trajectories," and flagging individuals for watch lists. This is open-source intelligence (OSINT), which is entirely lawful. It's also, functionally, a panopticon.

---

## Scenario Category 2: "Not Autonomous" — The Rubber-Stamp Loop

### The loophole

The agreement requires "human responsibility for the use of force, including for autonomous weapon systems." This language is about *responsibility*, not about *the decision-making process*. A human can be "responsible" for outcomes produced by a system they authorized, even if they did not individually evaluate each decision that system made.

Additionally, the agreement confines models to cloud environments rather than edge systems (like drones). But targeting decisions can be made in the cloud and transmitted to weapons platforms.

### The scenario

OpenAI models, operating in cloud environments, are integrated into a targeting pipeline. The AI:

1. Ingests intelligence data (signals, imagery, human intelligence)
2. Identifies candidate targets
3. Assesses probability of combatant status
4. Generates a recommended target list with confidence scores
5. Presents targets to a human operator for "approval"

The human operator receives hundreds of targets per shift. Each target comes with an AI-generated dossier and a recommendation. The operator has 20–30 seconds to review each recommendation before the tactical window closes. In practice, the approval rate is 97%+.

**Why this complies with the letter:** A human is in the loop. A human approves each strike. A human is "responsible for the use of force." The weapon system itself is not autonomous—it receives targeting coordinates from the cloud system, and a human authorized the strike. The AI model remains in the cloud, not on the edge. This is, legally and contractually, a human-directed weapons system with AI decision support.

**Why this violates the spirit:** This is the *Lavender* model. Israel's use of AI targeting systems in Gaza reportedly operated on exactly this pattern—AI-generated kill lists with human operators rubber-stamping at rates that made meaningful review impossible. The functional autonomy of the system is near-total. The human is a legal fig leaf rather than a meaningful check. The "human responsibility" framing makes this worse, not better: it creates accountability theater while the machine makes the actual decisions.

### Variant: Time-compressed authorization

The DoW argues that in a peer-conflict scenario (e.g., war with China in the Pacific), the speed of AI-enabled adversary targeting systems means the U.S. cannot afford deliberate human review. The targeting cycle is compressed to seconds. A human commander authorizes a "targeting envelope"—rules of engagement specifying categories of targets, geographic boundaries, and time windows—and the AI executes within those parameters. Each individual engagement is "authorized" by the human who approved the envelope. No engagement is technically "autonomous" because the human set the parameters.

---

## Scenario Category 3: "Not Domestic" — The Foreign/Domestic Blur

### The loophole

The agreement prohibits *domestic* mass surveillance. It says nothing about foreign surveillance that incidentally or inevitably sweeps up domestic data.

### The scenario

Under Section 702 of FISA, the government can target non-U.S. persons located abroad for surveillance. However, communications between a foreign target and a U.S. person are also collected. This "incidental collection" of American communications is not considered domestic surveillance under current law.

OpenAI models are deployed to process the vast trove of Section 702-collected data, including the incidentally collected communications of millions of Americans. The AI identifies patterns, builds relationship graphs, and flags Americans whose communications with foreign targets suggest security concerns. A "backdoor search"—querying the 702 database using a U.S. person's identifying information—does not require a warrant in most circumstances under current law.

**Why this complies with the letter:** The surveillance targets are foreign persons. The collection is foreign. The incidental capture of American data is a legally recognized and permitted side effect. The agreement prohibits *domestic* surveillance, and this is foreign surveillance with domestic byproducts. The AI is analyzing lawfully collected foreign intelligence.

**Why this violates the spirit:** The practical effect is that the U.S. government now has an AI system capable of analyzing the communications of millions of Americans—without a warrant, without probable cause, and without the Americans' knowledge—by routing the analysis through a foreign intelligence framework. The domestic/foreign distinction, already strained in the era of global communications, becomes essentially meaningless when AI can extract comprehensive profiles of American citizens from "incidentally" collected data at a scale and depth that no human analyst could achieve.

---

## Scenario Category 4: "Not Mass" — Targeted Programs That Scale

### The loophole

The agreement prohibits "mass" domestic surveillance. There is no definition of "mass." Any surveillance program can be framed as "targeted" if it selects individuals based on criteria, even if those criteria match millions of people.

### The scenario

The DoW establishes a program to monitor individuals who meet specific criteria: prior military service + social media activity critical of the government + purchase of certain items + association with flagged organizations. OpenAI models process commercially available data to identify individuals matching these criteria and continuously monitor their activities.

At any given moment, the system is monitoring "only" 3 million Americans—roughly 1% of the population. Each individual is specifically selected based on documented criteria. This is not "mass" surveillance; it is targeted surveillance at scale.

**Why this complies with the letter:** The program targets specific individuals based on specific criteria. No individual is surveilled without a documented basis. This is targeted intelligence collection, not mass surveillance. The criteria are related to legitimate security concerns.

**Why this violates the spirit:** A "targeted" program that monitors millions of Americans based on constitutionally protected activities (political speech, association, purchasing legal goods) is mass surveillance in everything but name. The AI's ability to apply criteria at scale transforms "targeted" into "mass" without ever crossing a legal threshold, because no legal threshold exists.

---

## Scenario Category 5: Cloud-to-Kill Chain — Edge Prohibition as Fiction

### The loophole

OpenAI's agreement restricts deployment to "cloud environments rather than edge systems." In a military context, edge systems include drones and other autonomous platforms. But the cloud/edge distinction addresses *where the model runs*, not *what it controls*.

### The scenario

The OpenAI model runs in a secure cloud environment. It processes sensor data streamed from drones. It identifies targets, plans engagement paths, and generates firing solutions. These outputs are transmitted to a weapons platform that executes them. The model never runs on the drone—it runs in the cloud. The drone is a remote actuator for cloud-based decision-making, much like a cloud gaming service where the game runs on a server but the player's TV displays the output and accepts controller inputs.

**Why this complies with the letter:** The model is deployed in the cloud. It is not embedded in an edge system. The edge system is a "dumb" weapons platform that receives instructions from a cloud-based system with human oversight.

**Why this violates the spirit:** The physical location of the computation is irrelevant to the question of autonomy. A cloud-based AI that controls a weapons platform in real-time is functionally identical to an edge-deployed autonomous weapon, except with slightly more latency. The cloud restriction addresses an engineering architecture concern, not the ethical concern about autonomous killing.

---

## The Structural Problem

All of these scenarios share a common feature: they are consistent with the letter of the OpenAI agreement because the agreement is anchored to existing legal frameworks that were not designed for AI capabilities.

This is exactly what Anthropic argued. The gap isn't hypothetical—it's the documented reason Anthropic refused to sign. Anthropic wanted *contractual* restrictions that would prohibit the *functional outcomes* (mass profiling of Americans; machines making kill decisions) regardless of whether existing law technically permitted the underlying activities. OpenAI's agreement instead says, in effect: "We prohibit these things to the extent they're already prohibited."

The Axios source put it plainly: "The intention was not to invent new legal standards."

That's the whole ballgame. Every scenario above is legal. Every scenario above is horrifying. And every scenario above is contractually permitted under the OpenAI–DoW agreement as publicly described.

---

## Comparison: Anthropic's Position

For reference, here is what Anthropic was trying to prevent. From Dario Amodei's February 26, 2026 statement:

On surveillance: AI can "assemble this scattered, individually innocuous data into a comprehensive picture of any person's life—automatically and at massive scale." Current law permits the government to purchase this data without a warrant, a practice the IC's own declassified report flagged as concerning. Anthropic wanted contractual language that would prevent this *regardless* of its legality.

On autonomous weapons: "Frontier AI systems are simply not reliable enough to power fully autonomous weapons." But beyond reliability, Anthropic argued that "without proper oversight, fully autonomous weapons cannot be relied upon to exercise the critical judgment that our highly trained, professional troops exhibit every day." Anthropic offered to work on R&D to improve reliability; the DoW declined.

Anthropic's red lines were *functional*: don't use our models to do X, where X is defined by outcomes. OpenAI's red lines are *legal*: don't use our models to do X, where X is defined by what current statute prohibits.

The difference between those two framings is the entirety of the scenarios above.
