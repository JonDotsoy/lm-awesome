---
mode: agent
description: This prompt guides the user in creating a new pricing file for AI models, including details such as model names, input/output prices, and caching information. It ensures the file is structured correctly and follows the existing format in the repository.
tools: ['changes', 'codebase', 'editFiles', 'extensions', 'fetch', 'findTestFiles', 'githubRepo', 'new', 'openSimpleBrowser', 'problems', 'runCommands', 'runNotebooks', 'runTasks', 'runTests', 'search', 'searchResults', 'terminalLastCommand', 'terminalSelection', 'testFailure', 'usages', 'vscodeAPI', 'SQLcl']
---

# Add Model Pricing File

## Instructions to Generate a New Pricing File

1. **Data Source**: Use the provided URL to obtain model pricing information. Example source: `https://www.anthropic.com/pricing#api`.
2. **File Format**: The file must be Markdown (`.md`).
3. **Structure**:
   - Main title with the provider name and "API Pricing".
   - Last updated date in the format: `_Last updated: <date>_`.
   - Source with a link to the URL used.
   - Section for Latest Models and Legacy Models, if applicable.
   - Tables with the following headers:
     - Model
     - Input Price (/MTok)
     - Output Price (/MTok)
     - Prompt Caching Write (/MTok)
     - Prompt Caching Read (/MTok)
   - Notes section with clarifications about pricing and links to the official source.
4. **Location**: The file must be saved at `data/models/provider/<provider>/pricing.md`.
5. **Consistency**: Maintain the same format and structure as existing files in the `data/models/provider/` folder.
6. **Update**: Include the current date as the last update.
7. **Language**: The content must be in English.

## Example Table

| Model           | Input Price (/MTok) | Output Price (/MTok) | Prompt Caching Write (/MTok) | Prompt Caching Read (/MTok) |
| --------------- | ------------------- | -------------------- | ---------------------------- | --------------------------- |
| Claude Opus 4.1 | $15                 | $75                  | $18.75                       | $1.50                       |

## Notes

- Prices are per million tokens (MTok).
- Prompt caching reflects a TTL of 5 minutes.
- For updated information, check the source URL.
