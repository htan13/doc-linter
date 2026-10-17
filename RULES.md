# Optimizely Vale rule index

Every rule in the Optimizely Vale package, with its level, where it runs, its findings on the documentation corpus, and its source. Use this index to trace an alert to the guidance behind it, and to see how much existing content each rule affects before you change it.

## How the rules were built and verified

- **Sources** – `/doc-style-guide` and `/doc-rn-review` in `patricklamopti/claude-skills` at commit `32bcaaabca79713817f7c303375ecec6935724ab`, the Knowledge Base additions in Promptless's `PROMPTLESS.md`, and the `copilot-instructions.md` file that 26 of the 27 documentation repositories carry with the same content (blob `3cef20e`; `episerver/product-feature-matrices` has none). Its rules apply package-wide, including to `episerver/product-feature-matrices`, because they state Optimizely-wide writing guidance rather than conventions of one collection. The earlier per-repository rules Promptless drafted from the same guide are merged into this package.
- **Rungs** – `StyleGuide` rules come from stated guidance. A rule the source states without exception is an error. A rule the source hedges, lists exceptions for, or places in its scored Style Guide or Warnings sections is a warning. `Observed` rules come from conventions Promptless measured in one collection; they are suggestions and run only in that collection. Promptless never promotes an `Observed` rule to `StyleGuide`.
- **Tests** – Each rule file carries `tests:` cases built from the source's own good and bad examples. `tests/run.sh` runs them.
- **Corpus check** – On 2026-10-16, Promptless linted every Markdown and MDX file in the 27 documentation repositories (about 4,000 pages) with Vale 3.23.0 and the configuration each repository receives. The counts below are existing violations of the stated guide. Promptless changed a rule only for parser or markup artifacts (front-matter `slug`, `createdAt`, and `docTags`, code samples, link markup, math, and file paths) and for exceptions the guide states. Promptless did not loosen a rule to fit existing content.

## Rules

| Rule | Level | Runs in | Findings | Pages | Source |
|---|---|---|---|---|---|
| `StyleGuide.AcronymCase` | error | all repos | 118 | 83 | doc-style-guide/SKILL.md:388 "Correct vocabulary terms" ("URL, SKU, ID, SDK always uppercase (unless part of a code sample)"). |
| `StyleGuide.Acronyms` | warning | all repos | 11057 | 1872 | doc-style-guide/SKILL.md:434-453 "Abbreviations must be spelled out on first use", with the stated exception list (UI, API, CLI, AI, B2B, B2C, URL, SKU, ID, SDK, REST). |
| `StyleGuide.ActionVerbs` | error | all repos | 2 | 2 | copilot-instructions.md, the agent-instruction file that 26 of the 27 Optimizely doc repositories carry with identical content (.github/copilot-instructions.md; episerver/cms... |
| `StyleGuide.AltTextFormat` | error | all repos | 2411 | 573 | doc-style-guide/SKILL.md:508-511 "Alt text required on all images" ("Use the format: 'IMAGE_TYPE of DATA/INFO where REASON_FOR_INCLUDING'"). |
| `StyleGuide.AltTextMissing` | error | all repos | 3885 | 800 | doc-style-guide/SKILL.md:506-511 "Alt text required on all images". |
| `StyleGuide.Ampersand` | error | all repos | 202 | 94 | doc-style-guide/SKILL.md:403 "Forbidden abbreviations and symbols" ("&" -> use "and"; exception: the product name Search & Navigation). |
| `StyleGuide.ArticleLength` | warning | all repos | 21 | 21 | doc-style-guide/SKILL.md:795 "Section length and scannability" ("Flag articles that exceed roughly 3,000 words total and recommend splitting into multiple articles"). |
| `StyleGuide.BoldEmphasis` | warning | all repos | 3383 | 785 | doc-style-guide/SKILL.md:291-299 "Bold for UI elements only" ("Do not use bold for general emphasis". Bad: "This is a **very important** step."). |
| `StyleGuide.BoldRawValue` | warning | all repos | 711 | 246 | doc-style-guide/SKILL.md:301-304 "Bold for UI elements only" ("Never bold a raw enum or constant value"; bold the display label, code-font the raw value). |
| `StyleGuide.ButtonNoun` | warning | all repos | 202 | 99 | copilot-instructions.md, the agent-instruction file that 26 of the 27 Optimizely doc repositories carry with identical content (.github/copilot-instructions.md; episerver/cms... |
| `StyleGuide.ButtonWord` | error | all repos | 67 | 47 | doc-style-guide/SKILL.md:333-338 "Do not use 'button' with button names". |
| `StyleGuide.CalloutCount` | warning | all repos | 240 | 240 | doc-style-guide/SKILL.md:691-693 "Callout overuse" ("Flag articles with more than three callouts"). |
| `StyleGuide.ClearCheckbox` | error | all repos | 17 | 16 | copilot-instructions.md, the agent-instruction file that 26 of the 27 Optimizely doc repositories carry with identical content (.github/copilot-instructions.md; episerver/cms... |
| `StyleGuide.CmsVersionedNames` | error | all repos | 0 | 0 | doc-style-guide/SKILL.md:475-481 "Use versioned CMS product names" and :572-573 "Use correct |
| `StyleGuide.CodeBlockLanguage` | error | all repos | 3 | 1 | doc-style-guide/SKILL.md:533-538 "Code blocks must specify the language". |
| `StyleGuide.CodeFontFiles` | error | all repos | 284 | 188 | doc-style-guide/SKILL.md:308-320 "Code font for technical elements" (file paths, file names, filename extensions; Bad: "Go to users/config.html."). |
| `StyleGuide.CodeFontHttp` | error | all repos | 162 | 101 | doc-style-guide/SKILL.md:310 "Code font for technical elements" (HTTP verbs, HTTP status codes, environment variables, constants). |
| `StyleGuide.ColonBeforeList` | error | all repos | 230 | 188 | doc-style-guide/SKILL.md:542-547 "Colons before lists must follow a complete sentence" (Bad: "The features include:"; Good: "The product includes the following feature... |
| `StyleGuide.Contractions` | error | all repos | 406 | 226 | doc-style-guide/SKILL.md:236-238 "Do not use contractions". |
| `StyleGuide.Dashes` | warning | all repos | 507 | 167 | doc-style-guide/SKILL.md:706-708 "Dashes and hyphens" (em dash for pauses, en dash for ranges and term definitions, hyphen only for compound adjectives). |
| `StyleGuide.DataSingular` | error | all repos | 21 | 21 | doc-style-guide/SKILL.md:387 "Correct vocabulary terms" ("data" as a singular mass noun: "the data is stored," not "the data are stored"). |
| `StyleGuide.DateMonthYearComma` | error | all repos | 0 | 0 | doc-style-guide/SKILL.md:424-430 "Dates must be fully written" ("When listing only a month and year, do not separate them with a comma"). |
| `StyleGuide.DateMonths` | error | all repos | 23 | 23 | doc-style-guide/SKILL.md:422-430 "Dates must be fully written" ("Do not abbreviate months when used with a specific date"). |
| `StyleGuide.DateNumeric` | error | all repos | 179 | 25 | doc-style-guide/SKILL.md:424 "Dates must be fully written" ("Spell out dates completely (for example, 'July 30, 2021')"). Extends Std.DateTime.DateFormat's numeric sha... |
| `StyleGuide.DateOrdinals` | error | all repos | 278 | 278 | doc-style-guide/SKILL.md:424 "Dates must be fully written" ("Do not use ordinal suffixes (st, nd, rd, th)"). |
| `StyleGuide.DefinitionBold` | error | all repos | 347 | 73 | doc-style-guide/SKILL.md:551-559 "Define lists of fields or values with en dashes" (Bad: "Name: Enter your name in the text field." Good: "**Name** – Enter your name .... |
| `StyleGuide.DefinitionDash` | error | all repos | 265 | 81 | doc-style-guide/SKILL.md:551-559 "Define lists of fields or values with en dashes" ("always use an en dash to offset the definition. Do not use colons. Bold the term"). |
| `StyleGuide.Directional` | warning | all repos | 1222 | 632 | doc-style-guide/SKILL.md:661-669 "Directional language" (use "previous" instead of "above" and "following" instead of "below" inside an article). |
| `StyleGuide.Ellipses` | warning | all repos | 242 | 124 | copilot-instructions.md, the agent-instruction file that 26 of the 27 Optimizely doc repositories carry with identical content (.github/copilot-instructions.md; episerver/cms... |
| `StyleGuide.ErrorMessageFormat` | error | all repos | 15 | 13 | doc-style-guide/SKILL.md:310-320 "Code font for technical elements" ("specific error messages ... Do not wrap error messages in quotes, italics, or bold") and skills/d... |
| `StyleGuide.ErrorMessageMarkup` | error | all repos | 18 | 12 | doc-style-guide/SKILL.md:310-320 "Code font for technical elements" ("Do not wrap error messages in quotes, italics, or bold") and skills/doc-rn-review/SKILL.md:165. |
| `StyleGuide.FillerWords` | warning | all repos | 203 | 158 | doc-style-guide/SKILL.md:685-687 "Filler adjectives and adverbs" ("good," "excellent," "great," "very," "quite," "really"). |
| `StyleGuide.FirstPerson` | warning | all repos | 948 | 358 | doc-style-guide/SKILL.md:457-462 "No first person" (exception: FAQ questions). |
| `StyleGuide.FormattingStacked` | warning | all repos | 152 | 51 | doc-style-guide/SKILL.md:751-759 "Apply only one formatting type to text" (Bad: "See *[reference library](url)*", "This is *_important_*"). |
| `StyleGuide.GenderedPronouns` | warning | all repos | 7 | 7 | doc-style-guide/SKILL.md:729 "Pronoun clarity" ("Use gender-neutral language (they/them) instead of gendered pronouns unless referring to a specific individual"). The ... |
| `StyleGuide.HeadingBeta` | error | all repos | 52 | 43 | doc-style-guide/SKILL.md:521-523 "No 'beta' in titles or headings". |
| `StyleGuide.HeadingCase` | error | all repos | 3592 | 1610 | doc-style-guide/SKILL.md:242-247 "Sentence case for titles and headings". |
| `StyleGuide.HeadingGeneric` | warning | all repos | 3058 | 1045 | doc-style-guide/SKILL.md:188-190 "Descriptive headings" ("Use specific, descriptive headings instead of generic one-word titles like 'Fee' or 'Pricing'"). |
| `StyleGuide.HeadingGerund` | error | all repos | 151 | 116 | doc-style-guide/SKILL.md:251-256 "No gerunds in headings". |
| `StyleGuide.HeadingH4` | warning | all repos | 0 | 0 | doc-style-guide/SKILL.md:502 "Heading hierarchy" ("Avoid H4 — restructure the article or use bold text instead") and :807. "Avoid" is hedged, so warning. |
| `StyleGuide.HeadingLevels` | error | all repos | 210 | 200 | doc-style-guide/SKILL.md:500-502 "Heading hierarchy" ("Do not use H1 within articles ... Do not skip heading levels") and :805-807 "Heading hierarchy reflects content ... |
| `StyleGuide.HeadingNumbered` | error | all repos | 387 | 43 | doc-style-guide/SKILL.md:260-278 "No numbered steps or section numbers in headings". |
| `StyleGuide.HeadingQuestion` | warning | all repos | 256 | 75 | doc-style-guide/SKILL.md:494-496 "No question marks in headings (with exceptions)". FAQ sections and checklists are exempt; |
| `StyleGuide.Hedging` | warning | all repos | 2513 | 1036 | doc-style-guide/SKILL.md:596-601 "Hedging language" and the Self-compliance checklist at :55 ("No hedging ('may,' 'might,' 'can')"). |
| `StyleGuide.IconReference` | error | all repos | 107 | 65 | doc-style-guide/SKILL.md:342-364 "Reference UI controls by label, not by icon or location". |
| `StyleGuide.ImageIntro` | warning | all repos | 47 | 36 | doc-style-guide/SKILL.md:835-837 "Image context and placement" ("Flag images that appear without any introductory or explanatory text"). |
| `StyleGuide.IntroBeforeList` | warning | all repos | 2534 | 1022 | doc-style-guide/SKILL.md:712-714 "Introductory text before lists and code" ("Every list should have an introductory paragraph ... |
| `StyleGuide.LatinAbbreviations` | error | all repos | 121 | 85 | doc-style-guide/SKILL.md:396-404 "Forbidden abbreviations and symbols" ("e.g." -> "for example"; "i.e." -> "that is"; "etc." -> "and so on"; "vs." or "vs" -> "versus"). |
| `StyleGuide.LinkText` | warning | all repos | 1852 | 789 | doc-style-guide/SKILL.md:206-208 "Cross-references and links" and :697-702 "Link text quality" ("Do not use 'click here,' 'see here,' or bare URLs as link text"). |
| `StyleGuide.ListSingleItem` | error | all repos | 3285 | 977 | doc-style-guide/SKILL.md:527-529 "Lists must have at least two items". |
| `StyleGuide.NoGifs` | error | all repos | 36 | 20 | doc-style-guide/SKILL.md:515-517 "Do not use gifs". |
| `StyleGuide.NumberSentenceStart` | warning | all repos | 9 | 6 | doc-style-guide/SKILL.md:410 "Spell out numbers one through nine" ("Spell out any number that starts a sentence (except calendar years)"). |
| `StyleGuide.Numbers` | warning | all repos | 1328 | 409 | doc-style-guide/SKILL.md:408-418 "Spell out numbers one through nine" (exception: step numbers always use numerals). |
| `StyleGuide.OxfordComma` | error | all repos | 812 | 583 | doc-style-guide/SKILL.md:282-287 "Oxford comma required". |
| `StyleGuide.PassiveVoice` | warning | all repos | 17890 | 2494 | doc-style-guide/SKILL.md:617-622 "Active voice preferred" (passive is acceptable when the event has no agent, the event matters more than the agent, or to avoid blame). |
| `StyleGuide.PlaceholderContent` | warning | all repos | 25 | 18 | doc-style-guide/SKILL.md:817-819 "Broken, incomplete, or placeholder content". |
| `StyleGuide.Placeholders` | error | all repos | 386 | 115 | doc-style-guide/SKILL.md:485-490 "Placeholder text formatting" ("ALL_CAPS with underscores ... Do not wrap placeholder text in square brackets or other special charact... |
| `StyleGuide.PossessiveAcronyms` | warning | all repos | 147 | 110 | doc-style-guide/SKILL.md:733-739 "Possessive acronyms" (Bad: "CMS's configuration options"). |
| `StyleGuide.ProductNames` | error | all repos | 421 | 225 | doc-style-guide/SKILL.md:563-585 "Use correct |
| `StyleGuide.PronounClarity` | warning | all repos | 2369 | 1143 | doc-style-guide/SKILL.md:727-729 "Pronoun clarity" ("Flag pronouns (it, this, that, they) that could be ambiguous"). |
| `StyleGuide.ReleaseNoteBeta` | warning | release-notes repos | 82 | 39 | doc-rn-review/SKILL.md:126-127 ("Do not include beta features. If you must make an exception ... include 'Beta' in parentheses at the beginning of the release note sen... |
| `StyleGuide.ReleaseNoteBoldLead` | error | release-notes repos | 298 | 31 | doc-rn-review/SKILL.md:112-116 ("Do not bold the leading phrase or sentence of a bullet"; the named-feature pattern '**Feature name** – Explanation' is the single exce... |
| `StyleGuide.ReleaseNoteEnhancementLink` | warning | release-notes repos | 295 | 48 | doc-rn-review/SKILL.md:117 ("Include link to relevant documentation for all enhancements or feature release notes. Identify if a release note seems like it should link... |
| `StyleGuide.ReleaseNoteFixLink` | error | release-notes repos | 19 | 14 | doc-rn-review/SKILL.md:138 ("Do not include a link to documentation" in a bug-fix note) and check B3. |
| `StyleGuide.ReleaseNoteFixOpener` | warning | release-notes repos | 706 | 21 | doc-rn-review/SKILL.md:132 ("The preferred pattern is 'Fixed the issue where [subject] [verb]...'. Avoid embedding the subject directly after 'Fixed the'"). "Preferred... |
| `StyleGuide.ReleaseNoteFixWording` | warning | release-notes repos | 7 | 4 | doc-rn-review/SKILL.md:132 ("Avoid strong words like 'failure' or 'error' unless referencing a specific error message the customer sees"). A bullet that also carries a... |
| `StyleGuide.ReleaseNoteGA` | warning | release-notes repos | 26 | 16 | doc-rn-review/SKILL.md:128 ("Use the following structure for general availability: The [product feature] is now generally available"). |
| `StyleGuide.ReleaseNotePeriod` | error | release-notes repos | 78 | 39 | doc-rn-review/SKILL.md:22 ("End the bullet with a period") and check F2. |
| `StyleGuide.ReleaseNoteScreenshots` | warning | release-notes repos | 32 | 5 | doc-rn-review/SKILL.md:118 ("Avoid screenshots unless they greatly enhance the customer's ability to consume the update"). The exception makes it a warning. |
| `StyleGuide.ReleaseNoteSecurity` | error | release-notes repos | 0 | 0 | doc-rn-review/SKILL.md:182 and :239 (check S1: a security note is exactly the literal "Improved security." with no additional detail). |
| `StyleGuide.ReleaseNoteSteps` | error | release-notes repos | 1 | 1 | doc-rn-review/SKILL.md:119 ("Do not include any step-by-step instructions in release notes. Instead, they should link to relevant documentation") and check E6. |
| `StyleGuide.ReleaseNoteVerbLead` | warning | release-notes repos | 638 | 198 | doc-rn-review/SKILL.md:123 ("Always start the first tier of each bulleted sentence with a verb in past tense"), :132 (bug fixes begin with "Fixed"), and check E2. |
| `StyleGuide.SectionLength` | warning | all repos | 94 | 77 | doc-style-guide/SKILL.md:793-795 "Section length and scannability" ("Flag any single section that exceeds roughly 800 words"). |
| `StyleGuide.Semicolons` | warning | all repos | 910 | 467 | doc-style-guide/SKILL.md:679-681 "Semicolons" (acceptable only in a series with intervening commas). |
| `StyleGuide.SentenceLength` | warning | all repos | 20495 | 2817 | doc-style-guide/SKILL.md:166 ("aim for fewer than 20 words per sentence") and :673-675 "Sentence length" ("Flag sentences longer than 20 words"). |
| `StyleGuide.Slashes` | error | all repos | 755 | 369 | doc-style-guide/SKILL.md:404 "Forbidden abbreviations and symbols" ("/" to separate options -> use "or"; do not use "and/or") and :742-747 "Forward slashes between opt... |
| `StyleGuide.TableEmptyCells` | warning | all repos | 363 | 28 | doc-style-guide/SKILL.md:220 "Accessible tables" ("Do not leave cells empty or null"). |
| `StyleGuide.TableImages` | warning | all repos | 0 | 0 | doc-style-guide/SKILL.md:220 "Accessible tables". |
| `StyleGuide.TableSymbols` | warning | all repos | 81 | 7 | doc-style-guide/SKILL.md:218-220 "Accessible tables" ("Use descriptive words (such as 'Yes,' 'No,' 'Included') instead of ambiguous symbols like 'X'"). |
| `StyleGuide.TableTwoColumns` | warning | all repos | 50 | 35 | doc-style-guide/SKILL.md:220 "Accessible tables" ("If you only have two columns, use a list instead"). |
| `StyleGuide.TheBeforeProduct` | error | all repos | 5 | 4 | doc-style-guide/SKILL.md:466-471 "Do not use 'the' before product names". A product name that qualifies a following noun ("the Feature Experimentation SDK") is not pre... |
| `StyleGuide.Timeless` | warning | all repos | 1058 | 627 | doc-style-guide/SKILL.md:170-172 "Timeless language" ("Avoid relative terms like 'new,' 'currently,' and 'latest' ... Use specific version numbers or release dates"). |
| `StyleGuide.UIPosition` | error | all repos | 146 | 103 | doc-style-guide/SKILL.md:342-364 "Reference UI controls by label, not by icon or location" (avoid "directional or positional cues": "at the top", "in the upper-right c... |
| `StyleGuide.UnnecessaryWords` | warning | all repos | 6195 | 1916 | doc-style-guide/SKILL.md:626-628 "Unnecessary words detected" and the Self-compliance checklist at :55 ("No filler ('simply,' 'easily,' 'successfully,' 'new')"). |
| `StyleGuide.UserInputItalics` | warning | all repos | 4 | 4 | doc-style-guide/SKILL.md:324-329 "Italics for user-entered text" (Bad: "Enter admin in the **Password** field." Good: "Enter *admin* in the **Password** field."). |
| `StyleGuide.VerbNounPairs` | error | all repos | 32 | 27 | doc-style-guide/SKILL.md:380-381 "Correct vocabulary terms" ("log in" (verb), "login" (noun); "set up" (verb), "setup" (noun)). |
| `StyleGuide.Via` | warning | all repos | 156 | 96 | copilot-instructions.md, the agent-instruction file that 26 of the 27 Optimizely doc repositories carry with identical content (.github/copilot-instructions.md; episerver/cms... |
| `StyleGuide.Vocabulary` | error | all repos | 1772 | 673 | doc-style-guide/SKILL.md:368-392 "Correct vocabulary terms". |
| `StyleGuide.WeakStarters` | warning | all repos | 4573 | 1615 | doc-style-guide/SKILL.md:605-613 "Weak sentence starters" ("You can", "There is/are"). |
| `StyleGuide.WordReplacements` | warning | all repos | 1014 | 585 | doc-style-guide/SKILL.md:649-657 "Word replacements" and the Self-compliance checklist at :58 ("'When' not 'once,' 'because' not 'since,' 'go to' not 'navigate'"). "on... |
| `StyleGuide.WordyPhrases` | warning | all repos | 670 | 384 | doc-style-guide/SKILL.md:632-645 "Wordy phrases detected" and the Self-compliance checklist at :56. |
| `StyleGuide.WordyPhrasesCms` | warning | all repos | 0 | 0 | copilot-instructions.md, the agent-instruction file that 26 of the 27 Optimizely doc repositories carry with identical content (.github/copilot-instructions.md; episerver/cms... |
| `Observed.OptimizelyGraphCasing` | suggestion | episerver/cms-saas-docs | 0 | 0 | collection_analyses/episerver_cms_saas_docs_5a8b7101/style-observations.md (Promptless Knowledge Base). |
| `Observed.ProseBranding` | suggestion | episerver/cms-13-docs | 113 | 41 | collection_analyses/episerver_cms_13_docs_e4d84dbb/style-observations.md (Promptless Knowledge Base). |
| `Observed.VisualBuilderCasing` | suggestion | episerver/cms-saas-docs | 0 | 0 | collection_analyses/episerver_cms_saas_docs_5a8b7101/style-observations.md (Promptless Knowledge Base). |

The Promptless baseline styles also run: `Direct.Preamble` (109), `Voices.Banned` (20), `Voices.BinaryContrast` (22), `Voices.ColonReveal` (137), `Voices.InflatedWords` (301), `Voices.Puffery` (1), `Voices.Recap` (13), `Voices.SuperficialAnalysis` (11), `Voices.WeakVerbs` (81), `Voices.Weasel` (1). `Direct.Hedging`, `Direct.Length`, and `Moose.EmDash` are off because `StyleGuide.Hedging`, `StyleGuide.SentenceLength`, and `StyleGuide.Dashes` govern those dimensions.

## Stated rules that no Vale check expresses

These rules need a reader's judgment. Reviewers and Promptless apply them; STYLE_GUIDE.md lists them as **Review**.

- Value proposition in every article introduction and in every H2 and H3 introduction (`/doc-style-guide` and the `PROMPTLESS.md` addition).
- Task-focused UI instructions, parallel structure, self-contained knowledge units, and paragraph length.
- Beginner-friendly introductions, prerequisites placement, logical section order, one topic per section, and numbered steps with one action each.
- Jargon defined at first use, promise-delivery alignment, redundant content, and link density.
- "Configure" rather than "set up" for software, "panel" and "window", and "view" as a synonym for "page". These depend on meaning, not on the word.
- Concepts written in title case, which Vale cannot tell apart from proper nouns.
- Warning-level callouts reserved for destructive actions, and table header rows.
- Release notes: value proposition (a hard fail in `/doc-rn-review`), present tense for new behavior, hype, issue-before-circumstance order in bug fixes, PR validation, the `(JIRA-KEY) – text.` drafting format, and the release-highlight line in deliverable files.

## Canonical rules written out

| Rule | Dimension | Superseded by |
|---|---|---|
| `Direct.Hedging` | hedging | `StyleGuide.Hedging` (extends it) |
| `Direct.Length` | sentence length | `StyleGuide.SentenceLength` (20 words, not 25) |
| `Moose.EmDash` | em dash | `StyleGuide.Dashes` (the guide allows em dashes for pauses) |

`Std` stays out of `BasedOnStyles`, so `Std.Grammar.Contractions`, `Std.Abbreviations.Latin`, and the other `Std` rules run only through the `StyleGuide` rules that extend them.

## Disagreements and retired rules

- **Past-tense lead** – `/doc-rn-review` requires a past-tense verb, and one of its own examples starts with "Define". `StyleGuide.ReleaseNoteVerbLead` is a warning until the KM team settles it.
- **Bug-fix opener** – Retired `Observed.BugFixOpener` (episerver/cms-saas-release-notes), which preferred "Fixed an issue where". It contradicted the stated "Fixed the issue where", which `StyleGuide.ReleaseNoteFixOpener` enforces.
- **Retired `Observed.ProductNameShort`** (episerver/cms-saas-release-notes) – It duplicated `StyleGuide.CmsVersionedNames`.
- **"Click" or "select"** – `/doc-style-guide` examples use "Click"; `copilot-instructions.md` says "select". No rule enforces either.
- **Word replacement levels** – `copilot-instructions.md` says "Always" where `/doc-style-guide` lists warnings. The rules follow `/doc-style-guide`.

## Repository defects found during the corpus check

- About 60 pages across 13 repositories have front matter that Vale cannot parse (`E201 yaml: mapping values are not allowed`), usually an unquoted colon in `title`. Vale skips these pages until the value is quoted. Each repository's configuration pull request lists its files.
- `episerver/cms-13-release-notes` keeps `copilot-instructions.md` in `github/` instead of `.github/`, so GitHub Copilot does not load it.
- `episerver/cms-13-docs` keeps `copilot-instructions.md` at the repository root instead of in `.github/`, so GitHub Copilot does not load it.
- `episerver/product-feature-matrices` has no `copilot-instructions.md`. The package applies the same rules to it anyway.
