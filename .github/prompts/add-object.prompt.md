---
mode: agent
description: This prompt guides the user in adding a new object, tool, or resource to the project's README.md file. It includes steps for fetching content from a URL, analyzing it, classifying it into categories, and updating the documentation accordingly.
tools: ['changes', 'codebase', 'editFiles', 'extensions', 'fetch', 'findTestFiles', 'githubRepo', 'new', 'openSimpleBrowser', 'problems', 'runCommands', 'runNotebooks', 'runTasks', 'runTests', 'search', 'searchResults', 'terminalLastCommand', 'terminalSelection', 'testFailure', 'usages', 'vscodeAPI', 'SQLcl']
---

# Add Object Prompt

## Instructions

When a user provides a URL, follow these steps:

1. **Fetch and Analyze the URL**: Download the content from the provided URL. Read and analyze the main information to understand what the object, tool, or resource is about. If the user does not specify the type, infer it from the content.

2. **Read the README.md**: Review the current `README.md` file to understand its structure and existing categories: AI Tools, Prompts, AI Models, MCP (Model Context Protocol) Tools.

3. **Classify the Object**: Based on your analysis, determine the most appropriate category for the new object. If the object fits into multiple categories, select the most relevant one.

4. **Update README.md**: Add the new object to the selected category in the `README.md` file. Ensure the documentation is written in clear English, following the style and format of the existing entries.

5. **Documentation Quality**: The description should be concise, informative, and easy to understand. If necessary, create a new entry in the table or section, including the name, description, link, and any other relevant details.

---

**Note:**

- If the user provides additional context or specifies a category, use that information to guide the classification and placement.
- Always ensure the README.md remains well-organized and readable.
