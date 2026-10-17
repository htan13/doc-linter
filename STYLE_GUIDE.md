---
title: Optimizely documentation style guide
---

This guide gives Optimizely writers one set of rules for product documentation and release notes. Readers then get the same clear experience in every product. The guide combines the Optimizely knowledge management (KM) team's `/doc-style-guide` and `/doc-rn-review` skills with the Knowledge Base additions that Promptless applies.

Each rule that Vale can check names its Vale rule. A CI alert links back to the reason for the rule, so writers fix the problem without guessing.

<!-- vale off -->
| | |
|---|---|
| **Sources** | `patricklamopti/claude-skills` at commit `32bcaaa`: `skills/doc-style-guide/SKILL.md` and `skills/doc-rn-review/SKILL.md`. The "Knowledge Base additions to the skills" in Promptless's `PROMPTLESS.md`. `copilot-instructions.md`, which 26 of the 27 documentation repositories carry with the same content (`episerver/cms-13-docs` at commit `6dab204`). |
| **Source of truth** | The `/doc-style-guide` and `/doc-rn-review` skills. When a skill changes, update this guide and the matching rule in `Optimizely/styles/` in the same pull request. |
| **Rule index** | [RULES.md](RULES.md) lists every Vale rule with its source line, level, and test cases. |
<!-- vale on -->

## How to read this guide

The guide groups rules by topic, so you find the rule behind an alert fast. Each rule shows its enforcement level:

- **Error** – An objective rule from the Errors section of `/doc-style-guide`, or an unconditional rule from `/doc-rn-review`.
- **Warning** – A rule that has stated exceptions or needs human judgment. Rules from the scored Style Guide section are warnings too.
- **Review** – A rule that Vale cannot check. Reviewers and Promptless apply it.

Examples display in code font, so Vale does not flag the incorrect examples in this guide.

## Voice and tone

Optimizely documentation is easy to understand, concise, and consistent, so readers find what they need without extra words. Write for the target audience in everyday words and simple sentences.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Keep sentences under 20 words. | Split long sentences. | A sentence longer than 20 words | Warning – `StyleGuide.SentenceLength` |
| Use active voice. Passive voice is acceptable in three cases: the event has no agent, the event matters more than the agent, or you avoid blame. | `The system generates a token when the user logs in.` | `The token is generated when the user logs in.` | Warning – `StyleGuide.PassiveVoice` |
| State facts directly. Do not hedge. | `Install version 13 to get the editor.` | `You might want to consider installing the latest version.` | Warning – `StyleGuide.Hedging` |
| Lead with the action, not a weak starter. | `Configure the API by editing the settings file.` | `You can configure the API by editing the settings file.`, `There are several options available.` | Warning – `StyleGuide.WeakStarters` |
| Do not use first person outside FAQ questions. Use "you" for instructions and third person for other content. | `This feature helps you accomplish your goals.` | `We designed this feature to help our customers.` | Warning – `StyleGuide.FirstPerson` |
| Do not use contractions. | `do not`, `cannot`, `it is` | `don't`, `can't`, `it's` | Error – `StyleGuide.Contractions` |
| Use gender-neutral pronouns unless you refer to a specific person. | `Each user checks their settings.` | `Each user checks his or her settings.` | Warning – `StyleGuide.GenderedPronouns` |
| Give every pronoun a clear antecedent. | `Restart the server. The restart clears the cache.` | `Restart the server. This ensures the cache clears.` | Warning – `StyleGuide.PronounClarity` |
| Adapt the content to its audience, and keep it consistent across a documentation set. | Not applicable | Not applicable | Review |

The Promptless baseline styles (`Voices`, `Direct`, and `House`) also run. They flag machine-sounding prose, such as throat-clearing openers, puffery, and unattributed authority. Where the Optimizely guide takes a position, the Optimizely rule replaces the baseline rule. For this reason, `Direct.Hedging`, `Direct.Length`, and `Moose.EmDash` are off.

## Concise writing

Short text is easier to read and scan. Remove filler, unnecessary adjectives, and superfluous adverbs, so every word adds to the reader's understanding.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Remove words that are often unnecessary. | `Create a widget.` | `Simply create a new widget.` Also `all`, `always`, `easily`, `either`, `both`, `out-of-the-box`, `OOTB`, `built-in`, `please`, `quickly`, `successfully`, `therefore`, and `thereby`. | Warning – `StyleGuide.UnnecessaryWords` |
| Replace wordy phrases. | `lets you`, `when`, `and`, `is`, `to`, `you can`, `can` | `allows you to`, `as soon as`, `as well as`, `has been`, `in order to`, `it is possible`, `will be able to`, `will be happy to`, `more information` | Warning – `StyleGuide.WordyPhrases` |
| Remove subjective adjectives and filler adverbs. | `This method caches pages for 30 minutes.` | `This is a very good way to cache pages.` Also `great`, `excellent`, `quite`, and `really`. | Warning – `StyleGuide.FillerWords` |
| Keep paragraphs short. Make each paragraph a self-contained unit that defines its inputs, outputs, and context. | Not applicable | Not applicable | Review |
| Keep headings to one line. | Not applicable | Not applicable | Review |

## Timeless language

Relative terms go out of date and make readers question whether the content is accurate. Use a specific version number or release date instead.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Avoid relative time terms. | `Version 13.4 adds the editor.` | `The latest release adds the new editor.` Also `currently`, `recently`, `soon`, `upcoming`, and `now available`. | Warning – `StyleGuide.Timeless` |

## Write headings

Descriptive, consistent headings let readers and AI systems understand an article from its table of contents.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Use sentence case for titles and headings. Capitalize only the first word and proper nouns. | `Configure the payment service settings` | `Configure The Payment Service Settings` | Error – `StyleGuide.HeadingCase` |
| Do not use gerunds. Start task titles with an imperative verb. Name a concept article after the concept. A participial adjective that modifies a noun is not a gerund, so `Breaking changes` is acceptable. | `Configure your settings` | `Configuring your settings`, `Monitoring` | Error – `StyleGuide.HeadingGerund` |
| Do not put step numbers or section numbers in headings. | `Configure the payment settings` | `Step 1: Configure the payment settings`, `1.1.1.2 Advanced options` | Error – `StyleGuide.HeadingNumbered` |
| Do not put "beta" in a title or heading. Use the beta callout at the start of the article or section. | `Visual Builder` | `Visual Builder (beta)` | Error – `StyleGuide.HeadingBeta` |
| Avoid question marks in headings and body text. FAQ sections and checklists are the exception. | `Flags overview` | `What is a flag?` | Warning – `StyleGuide.HeadingQuestion` |
| Use specific, descriptive headings. The standard section names `Overview`, `Prerequisites`, and `Troubleshooting` are acceptable. | `Pricing for Feature Experimentation plans` | `Pricing`, `Fee` | Warning – `StyleGuide.HeadingGeneric` |
| Do not use H1 in an article, because the title is H1. Start at H2, then H3, and do not skip a level. | `##`, then `###` | `#` in the body, or `##` followed by `####` | Error – `StyleGuide.HeadingLevels` |
| Avoid H4. Restructure the article, or use a bold paragraph lead. | `**Advanced timeout options**` | `#### Advanced timeout options` | Warning – `StyleGuide.HeadingH4` |

## Structure articles

A predictable structure helps a reader with no prior knowledge of the product finish the task. These Clarity and Organization rules apply to every article.

- **Value proposition** – Open every article, and every H2 and H3 section, with a value statement. Say what the feature or section does, why the reader uses it, and the outcome they get. Lead with the reader's motivation, then the details. Review.
- **Beginner-friendly introduction** – Answer three questions in the opening paragraphs. What is the feature? Why use it? What does the reader need first? Review.
- **Prerequisites** – State permissions, plans, and required settings in a dedicated section near the start of a task article. Review.
- **Logical order** – Order sections the way a reader works. The usual order is overview, prerequisites, access, core features, advanced features, and troubleshooting. Review.
- **Section length** – Keep each section to one topic, and split sections longer than about 800 words. Warning – `StyleGuide.SectionLength`.
- **Article length** – Split articles longer than about 3,000 words into several articles. Warning – `StyleGuide.ArticleLength`.
- **Jargon** – Define product-specific concepts, such as bucketing, CUPED, Winsorization, and SRM, in one plain sentence at first use. A link is not a substitute. Review.
- **Procedures** – Use numbered steps for sequential instructions, with one action per step. Review.
- **Promise and delivery** – Deliver what the text promises. A sentence that promises three options introduces three options. Review.
- **Redundancy** – Remove duplicate paragraphs and introductions that repeat the summary. Review.
- **Placeholder content** – Remove leftover drafting text, such as `TODO`, `TBD`, and `lorem ipsum`. Warning – `StyleGuide.PlaceholderContent`.
- **Self-contained sections** – Write each paragraph and section to stand on its own. Readers and AI systems then understand it without the rest of the article. Review.

## Product names

Current, correctly formed product names help readers find the right product and documentation. Use the most recent name. Old names are acceptable only in package names, which take code font.

| Use | Do not use | Vale rule |
|---|---|---|
| Analytics | `NetSpring`, `OA` | `StyleGuide.ProductNames` (error) |
| B2B Commerce Analytics | `B2B Analytics` | `StyleGuide.ProductNames` (error) |
| Collaboration | `Experimentation Collaboration`, `Collab`, `Exp Collab`, `Program Management` | `StyleGuide.ProductNames` (error). `Program Management` is review only. |
| Commerce Connect | `CoCo`, `Customized Commerce`, `Commerce Cloud`, `B2C Commerce` | `StyleGuide.ProductNames` (error) |
| Configured Commerce | `CFG`, `B2B Commerce`, `Insite Commerce`, `Insite` | `StyleGuide.ProductNames` (error) |
| Content Management System (SaaS) or CMS (SaaS) | `CMS SaaS`, `SaaS CMS` | `StyleGuide.CmsVersionedNames` (error) |
| Content Management System (PaaS) or CMS (PaaS) for every PaaS version. CMS 11, CMS 12, or CMS 13 for one version. | `CMS PaaS`, `PaaS CMS` | `StyleGuide.CmsVersionedNames` (error) |
| Content Marketing Platform or CMP | `Welcome`, `Newscred`, `Marketing Orchestration` | `StyleGuide.ProductNames` (error). A bare `Welcome` is review only. |
| Content Recommendations | `Content Recs`, `CR`, `Idio` | `StyleGuide.ProductNames` (error) |
| Commerce Mobile | `InsiteMobile` | `StyleGuide.ProductNames` (error) |
| Optimizely Data Platform, Data Platform, or ODP | `Zaius`, `Intelligence Cloud` | `StyleGuide.ProductNames` (error) |
| Feature Experimentation | `Full Stack` | `StyleGuide.ProductNames` (error) |
| Opti ID | `OptiID` | `StyleGuide.ProductNames` (error) |
| Optimizely Connect Platform or OCP | `Connect Platform` | `StyleGuide.ProductNames` (error) |
| Performance Edge | `Edge` | `StyleGuide.ProductNames` (error for `Optimizely Edge`). A bare `Edge` is review only. |
| Personalization | `P13n` | `StyleGuide.ProductNames` (error) |
| Product Recommendations | `Product Recs`, `Perform` | `StyleGuide.ProductNames` (error). A bare `Perform` is review only. |
| Search & Navigation | `Find` | `StyleGuide.ProductNames` (error for `Optimizely Find` and `Episerver Find`). A bare `Find` is review only. |
| Web Experimentation | `Web` | `StyleGuide.ProductNames` (error for `Optimizely Web`). A bare `Web` is review only. |

Two more rules apply to every product name:

- **No article** – Do not put "the" before a product name. Write `Go to Optimizely CMS.`, not `Go to the Optimizely CMS.` A product name that describes a following noun, as in `the Feature Experimentation SDK`, is correct. Error – `StyleGuide.TheBeforeProduct`.
- **No possessive acronym** – Rephrase `CMS's configuration options` as `configuration options in CMS`. Warning – `StyleGuide.PossessiveAcronyms`.

## Word list

A shared vocabulary keeps instructions consistent across products. Use the term in the first column.

| Use | Do not use | Level and Vale rule |
|---|---|---|
| page | `screen`, `view` | Error – `StyleGuide.Vocabulary` checks `screen`. The word `view` is review only, because it is also a verb. |
| drop-down list | `dropdown`, `drop down` | Error – `StyleGuide.Vocabulary` |
| text field | `text box` | Error – `StyleGuide.Vocabulary` |
| checkbox, toolbar, tooltip | `check box`, `tool bar`, `tool tip` | Error – `StyleGuide.Vocabulary` |
| time zone | `timezone`, `time-zone` | Error – `StyleGuide.Vocabulary` |
| ecommerce | `e-commerce`, `eCommerce` | Error – `StyleGuide.Vocabulary` |
| on-premises | `on-prem`, `on-premise` | Error – `StyleGuide.Vocabulary` |
| sync | `synchronize` | Error – `StyleGuide.Vocabulary` |
| allowlist, denylist | `whitelist`, `blacklist` | Error – `StyleGuide.Vocabulary` |
| UI | `user interface` | Error – `StyleGuide.Vocabulary` |
| canceled, canceling | `cancelled`, `cancelling` | Error – `StyleGuide.Vocabulary` |
| back end (noun) and back-end (adjective), front end and front-end | `backend`, `frontend` | Error – `StyleGuide.Vocabulary` |
| log in and set up (verbs), login and setup (nouns) | `Login to the CMS`, `setup the integration` | Error – `StyleGuide.VerbNounPairs` |
| configure (for software) | `set up` for software | Review |
| panel (side UI elements), window (most other containers) | Not applicable | Review |
| data is (singular) | `data are` | Error – `StyleGuide.DataSingular` |
| URL, SKU, ID, and SDK in uppercase, except in code | `url`, `Sku`, `Id`, `sdk` | Error – `StyleGuide.AcronymCase` |
| when | `once` in the sense of "when" | Warning – `StyleGuide.WordReplacements` |
| because | `since` in the sense of "because" | Warning – `StyleGuide.WordReplacements` |
| want | `wish` | Warning – `StyleGuide.WordReplacements` |
| is, are | `will be` | Warning – `StyleGuide.WordReplacements` |
| display (for UI elements) | `appear` | Warning – `StyleGuide.WordReplacements` |
| go to | `navigate`, `browse` | Warning – `StyleGuide.WordReplacements` |

Every documentation repository except `episerver/product-feature-matrices` carries the same `copilot-instructions.md`. Its action verbs and word choices apply to all Optimizely documentation, including that repository:

- **`StyleGuide.ClearCheckbox`** – Clear a checkbox. Do not write `deselect` or `uncheck`.
- **`StyleGuide.ActionVerbs`** – Write `hover over`, `press` a key, and `enter` text. Do not write `mouse over`, `hit`, or `type`.
- **`StyleGuide.Via`** – Write `through` or `with`. Do not write `via`.
- **`StyleGuide.Ellipses`** – Name the control by its tooltip. Do not write `...`.
- **`StyleGuide.ButtonNoun`** – Use the control's label. Do not write the word `button`.
- **`StyleGuide.WordyPhrasesCms`** – Write `must be` and `you should`. Do not write `must have been` or `Optimizely recommends`.

## Abbreviations and symbols

Spelled-out terms and plain words read faster than abbreviations and symbols, especially for readers who translate the page.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Do not use Latin abbreviations. | `for example`, `such as`, `like`, `that is`, `and so on`, `versus` | `e.g.`, `i.e.`, `etc.`, `vs.`, `vs` | Error – `StyleGuide.LatinAbbreviations` |
| Use "and" instead of an ampersand. The product name Search & Navigation is the exception. | `Create and edit content.` | `Create & edit content.` | Error – `StyleGuide.Ampersand` |
| Use "or" instead of a slash between options. Fixed terms such as A/B, CI/CD, and TCP/IP are not options. | `Select the HTML or CSS option.` | `Select the HTML/CSS option.`, `and/or` | Error – `StyleGuide.Slashes` |
| Spell out an abbreviation on first use, with the abbreviation in parentheses. UI, API, CLI, AI, B2B, B2C, URL, SKU, ID, SDK, and REST need no expansion. | `The Optimizely Data Platform (ODP) JavaScript tag` | `The ODP JavaScript tag` | Warning – `StyleGuide.Acronyms` |

## Write numbers

Consistent number formatting keeps text easy to scan.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Spell out one through nine. Use numerals for 10 and above, and for step numbers. | `Select three items.`, `Return to step 3.` | `Select 3 items.`, `Return to step three.` | Warning – `StyleGuide.Numbers` |
| Spell out a number that starts a sentence, except a calendar year. | `Twenty-five users can sign in.` | `25 users can sign in.` | Warning – `StyleGuide.NumberSentenceStart` |

## Dates and times

Fully written dates read the same way in every region.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Spell out the month with a specific date. | `July 30, 2021` | `Jul. 30, 2021` | Error – `StyleGuide.DateMonths` |
| Do not use ordinal suffixes. | `July 30, 2021` | `July 30th, 2021` | Error – `StyleGuide.DateOrdinals` |
| Do not put a comma between a month and a year. | `June 2021` | `June, 2021` | Error – `StyleGuide.DateMonthYearComma` |
| Do not use numeric dates in prose. | `July 30, 2021` | `07/30/2021`, `2021-07-30` | Error – `StyleGuide.DateNumeric` |

## Use punctuation

Consistent punctuation keeps sentences unambiguous.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Use the Oxford comma. | `Create, edit, and delete content.` | `Create, edit and delete content.` | Error – `StyleGuide.OxfordComma` |
| Avoid semicolons. Split the thoughts into two sentences. A semicolon is acceptable in a series with internal commas. | `The cache refreshes hourly. The index refreshes daily.` | `The cache refreshes hourly; the index refreshes daily.` | Warning – `StyleGuide.Semicolons` |
| Use an em dash (—) for a pause and an en dash (–) for ranges and definitions. Use a hyphen in compound adjectives. Prefer colons or parentheses to dashes. | `10–15 minutes`, `a well-known key` | `10-15 minutes`, `nightly - it` | Warning – `StyleGuide.Dashes` |

## UI elements

Task-focused instructions stay accurate when the UI changes. Describe the task the reader performs. Name a UI element only when the reader needs it, by its on-screen label.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Focus on the task, not the interaction with the control. | `Refresh the page.` | `Click the Refresh button at the top of the page.` | Review |
| Refer to a button by its bold label alone. | `Click **Save**.` | `Click the **Save** button.` | Error – `StyleGuide.ButtonWord` |
| Name a control by its label or tooltip, never by its icon. | `Click **More options**.` | `Click the ⋮`, `the gear icon`, `the three dots` | Error – `StyleGuide.IconReference` |
| Do not describe where a control sits on the page. | `Click **Refresh**.` | `Click Refresh in the upper-right corner.`, `next to the synonym` | Error – `StyleGuide.UIPosition` |
| Inside an article, use "previous" and "following" instead of "above" and "below". | `As mentioned in the previous section` | `As mentioned above` | Warning – `StyleGuide.Directional` |

If a control has no label, use its tooltip text. If it has no tooltip, ask the product team to add one rather than describe the icon.

## Apply formatting

Each formatting type has one meaning, so readers tell UI labels, entered text, and code apart at a glance.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Use bold for UI element names (buttons, menus, tabs, fields). Use italics sparingly for emphasis when a callout does not fit. | `This is an _important_ step.` | `This is a **very important** step.` | Warning – `StyleGuide.BoldEmphasis` |
| Bold the display label of a status or enum value. Use code font when the reader sees the raw value. Do not bold a raw value. | `**In Progress**` or `` `InProgress` `` | `**InProgress**` | Warning – `StyleGuide.BoldRawValue` |
| Italicize text the reader enters. | `Enter *admin* in the **Password** field.` | `Enter admin in the **Password** field.` | Warning – `StyleGuide.UserInputItalics` |
| Apply one formatting type to text. | `See [reference library](url).` | `See *[reference library](url)*.`, `*_important_*` | Warning – `StyleGuide.FormattingStacked` |

## Format code

Code font marks the exact text a reader types, reads in a log, or finds in a file.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Put file paths, file names, and filename extensions in code font. | ``Go to `users/config.html`.`` | `Go to users/config.html.` | Error – `StyleGuide.CodeFontFiles` |
| Put HTTP verbs, HTTP status codes, and environment variables in code font. Class names, method names, table names, options, data types, and inline code take code font too. | ``Send a `POST` request.`` | `Send a POST request.` | Error – `StyleGuide.CodeFontHttp` checks verbs, status codes, and constants. The rest is review. |
| Put specific error messages in code font, not quotes, italics, or bold. | ``The system displays `File not found`.`` | `The system displays "File not found".` | Error – `StyleGuide.ErrorMessageFormat`, `StyleGuide.ErrorMessageMarkup` |
| Write placeholders in capitals with underscores, without brackets. | `PROJECT_ID` | `[project-id]`, `{projectId}`, `<your-api-key>` | Error – `StyleGuide.Placeholders` |
| Give every code block a language identifier. | ```` ```javascript ```` | ```` ``` ```` | Error – `StyleGuide.CodeBlockLanguage` |
| Introduce every code block with a sentence. | A sentence that ends in a colon | A code block directly after a heading | Warning – `StyleGuide.IntroBeforeList` |

## Write lists

Lists make related items scannable when each list is complete and consistent.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Use at least two items in a list. | A sentence for one item | A one-item list | Error – `StyleGuide.ListSingleItem` |
| End the text before a list colon with a complete sentence. | `The product includes the following features:` | `The features include:` | Error – `StyleGuide.ColonBeforeList` |
| Define fields or values with a bold term and an en dash. Use code font instead of bold for technical terms. | `**Name** – Enter your name.` | `**Name**: Enter your name.`, `Name: Enter your name.` | Error – `StyleGuide.DefinitionDash`, `StyleGuide.DefinitionBold` |
| Introduce every list with a sentence that ends in a period or colon. | A sentence that ends in a colon | A list directly after a heading | Warning – `StyleGuide.IntroBeforeList` |
| Use parallel structure in lists, headings, and related sentences. | Not applicable | Not applicable | Review |

## Build accessible tables

Simple tables work for every reader, including readers who use screen readers.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Identify a header row. | A header row | A table without a header row | Review |
| Use words such as Yes, No, or Included instead of symbols. | `Yes` | `X`, `✓` | Warning – `StyleGuide.TableSymbols` |
| Do not leave cells empty or null. | `None` | An empty cell | Warning – `StyleGuide.TableEmptyCells` |
| Use a list instead of a two-column table. | `**Term** – Description` | A two-column table | Warning – `StyleGuide.TableTwoColumns` |
| Avoid images and icons in tables. | A word that describes the value | An image in a cell | Warning – `StyleGuide.TableImages` |

## Add images

Images help readers confirm what they see on the page, when each image explains itself to every reader.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Give every image descriptive alt text. | Alt text in the following format | An image with empty alt text | Error – `StyleGuide.AltTextMissing` |
| Write alt text as `IMAGE_TYPE of DATA_OR_INFO where REASON_FOR_INCLUDING`. | `Screenshot of the Payment Method page where Credit Card is toggled to Yes` | `oa-rank-block.png`, `New block in folder` | Error – `StyleGuide.AltTextFormat` |
| Do not use GIFs. | A static screenshot | `drag.gif` | Error – `StyleGuide.NoGifs` |
| Introduce each image with text that explains what it shows and why it matters. Place the image next to that text. | A sentence before the image | An image directly after a heading | Warning – `StyleGuide.ImageIntro` |

## Add links

Links carry supplementary information, not content the reader needs to understand the page.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Use the destination title or a concise description as link text. | `Go to the [reference library](url).` | `click here`, a bare URL as link text | Warning – `StyleGuide.LinkText` |
| Explain an idea in the text when the reader needs it, and link for supporting detail. | Not applicable | Not applicable | Review |
| Limit links to about every other paragraph. | Not applicable | Not applicable | Review |

## Use callouts

Callouts draw attention to critical information. When an article has too many, readers stop noticing them.

- **Callout count** – Use no more than three callouts in an article. Warning – `StyleGuide.CalloutCount`.
- **Warning callouts** – Use warning-level callouts for destructive actions. Review.

## Release notes

Release notes tell implementors and end users what changed and why it matters to them. These rules come from `/doc-rn-review`, and they add to the rest of this guide. The `ReleaseNote*` rules run in `*-release-notes` repositories.

### Enhancements and features

Enhancement notes help readers decide whether to adopt a change. Each one states the value and links to the documentation.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Include the value proposition, ideally in the first sentence through a relative clause such as "which lets" or "so that". | `Released ratio metrics, which let you select different numerator and denominator events.` | `Released ratio metrics.` | Review. A missing value proposition fails the `/doc-rn-review` gate. |
| Start each top-level bullet with a past-tense verb. A large feature can use the named-feature pattern. | `Added`, `Improved`, `Released`, `**Feature name** – Explanation.` | `Adds`, `New option` | Warning – `StyleGuide.ReleaseNoteVerbLead` |
| Do not bold the leading phrase. Bold UI element names only. | `Improved the **Add to List** dialog` | `**Improved the Add to List dialog**` | Error – `StyleGuide.ReleaseNoteBoldLead` |
| Link to the relevant documentation. | `See [Create a ratio metric](url).` | An enhancement without a link | Warning – `StyleGuide.ReleaseNoteEnhancementLink` |
| Do not include step-by-step instructions. Link to the documentation. | A link to the procedure | A numbered procedure | Error – `StyleGuide.ReleaseNoteSteps` |
| Avoid screenshots unless the release note is the only way to show the update. | A link to the article | A screenshot of a documented page | Warning – `StyleGuide.ReleaseNoteScreenshots` |
| Do not include beta features. For an exception, start the note with "(Beta)". | `(Beta) Added SCIM provisioning.` | `Added SCIM provisioning, which is in beta.` | Warning – `StyleGuide.ReleaseNoteBeta` |
| Announce general availability as "The [feature] is now generally available." | `Visual Builder is now generally available.` | `Visual Builder is GA.` | Warning – `StyleGuide.ReleaseNoteGA` |
| Avoid hype, and document reality. | A measurable outcome | `game-changing` | Review. `Voices.Puffery` flags importance claims. |
| Use present tense for the resulting behavior of new functionality. | `The editor saves drafts.` | `The editor will save drafts.` | Review |

### Bug fixes

Bug-fix notes confirm that documented behavior works again. They state the symptom plainly and do not send the reader elsewhere.

| Rule | Do | Do not | Level and Vale rule |
|---|---|---|---|
| Start with "Fixed the issue where [subject] [verb]". | `Fixed the issue where CMS Edit mode search returned no results.` | `Fixed a bug where`, `Fixed the CMS search that` | Warning – `StyleGuide.ReleaseNoteFixOpener` |
| State the issue first, then the circumstances. Explain the resolution when it changes how the product works. | The symptom, then the trigger | The root cause | Review |
| Avoid "failure" and "error" unless you quote the error message the customer sees, in code font. | ``Fixed the `Failed to process your payment` checkout error.`` | `Fixed the issue where the import failed with an error.` | Warning – `StyleGuide.ReleaseNoteFixWording` |
| Do not link to documentation. | A note without a link | `Fixed ... See [Manage users](url).` | Error – `StyleGuide.ReleaseNoteFixLink` |

### Security fixes and format

Fixed formats make release notes fast to scan and safe to publish.

- **Security note** – Write a security note as exactly `Improved security.` Error – `StyleGuide.ReleaseNoteSecurity`.
- **Terminal period** – End every bullet with a period. Error – `StyleGuide.ReleaseNotePeriod`.
- **Drafting format** – Draft bullets as `(JIRA-KEY) – Drafted release note.` with an en dash. The KM team reviews this format before publishing. Review.
- **Deliverable file** – Start a release-note deliverable file with a `## TL;DR` that includes a `### Release highlight`. The highlight has eight words or fewer and starts with a past-tense verb. Review.

## Known disagreements in the sources

Each of these is a decision for the KM team. Vale enforces the position named here until the source changes.

- **Past-tense verb lead** – `/doc-rn-review` requires a past-tense verb at the start of every bullet. One of its own examples starts with "Define". For this reason, `StyleGuide.ReleaseNoteVerbLead` is a warning.
- **Bug-fix opener** – `/doc-rn-review` prefers "Fixed the issue where". The CMS (SaaS) release notes mostly use "Fixed an issue where". The stated rule wins, and Promptless retired the earlier observed rule that preferred "an issue".
- **"Click" or "select"** – `/doc-style-guide` examples use "Click **Save**". The repositories' `copilot-instructions.md` says to use "select" for buttons. Vale enforces neither, and "click" stays acceptable.
- **Word replacement levels** – The repositories' `copilot-instructions.md` says "Always" for several word replacements that `/doc-style-guide` lists as warnings. The rules stay warnings, as `/doc-style-guide` lists them.

## Change this guide or a rule

Keep the guide, the skills, and the rules in step, so writers, reviewers, and Vale apply the same rules.

1. Change the rule in `/doc-style-guide` or `/doc-rn-review` in `patricklamopti/claude-skills`.
2. In this repository, update this guide and the rule in `Optimizely/styles/StyleGuide/`, including its `tests:` cases.
3. Run `tests/run.sh`.
4. Merge the pull request. The release workflow publishes an updated `Optimizely.zip`, and each repository gets it on its next `vale sync`.
