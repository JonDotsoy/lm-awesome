# Contributing to LM AWESOME

Thank you for your interest in contributing to LM AWESOME! This guide will help you understand how to contribute to this curated collection of Large Models (LM) tools, models, and resources.

## 🚀 Getting Started

### Prerequisites

Before contributing, make sure you have the following tools installed:

- **[bun.sh](https://bun.sh/)** - JavaScript runtime and package manager
- **make** - Build automation tool
- **VS Code** (optional but recommended) - For using the built-in prompts

### Installation

1. Fork the repository
2. Clone your fork:
   ```bash
   git clone https://github.com/your-username/lm-awesome.git
   cd lm-awesome
   ```
3. Verify you have the required dependencies:
   ```bash
   make dep-bun  # This will check if bun is installed
   ```

## 📝 How to Contribute

### Using VS Code Prompts (Recommended)

If you're using VS Code, you can use the built-in prompts to easily add content:

#### Adding AI Tools, Models, or Resources

Use the `/add-object <url>` prompt to automatically add new tools or resources:

1. Open VS Code in the project directory
2. Use the prompt: `/add-object https://example.com/tool-url`
3. The prompt will:
   - Fetch and analyze the content from the URL
   - Determine the appropriate category (AI Tools, AI Models, MCP Tools, etc.)
   - Add the entry to the README.md following the existing format
   - Maintain proper documentation structure

#### Adding or Updating Pricing Information

Use the `/add-pricing <url>` prompt to add or update model pricing:

1. Use the prompt: `/add-pricing https://provider.com/pricing-page`
2. The prompt will:
   - Create or update pricing files in `data/models/provider/<provider>/pricing.md`
   - Follow the standardized pricing table format
   - Include input/output prices, caching information when available
   - Add proper metadata and source attribution

### Manual Contribution Process

If you prefer to contribute manually or don't use VS Code:

#### Adding AI Tools

1. Add your tool to the AI Tools table in `README.md`
2. Follow this format:
   ```markdown
   | Tool Name | Description | [Tool Name][tool-ref] | Category |
   ```
3. Add the footnote reference at the bottom of the file:
   ```markdown
   [tool-ref]: https://tool-website.com
   ```

#### Adding AI Models

1. Add your model to the AI Models table in `README.md`
2. Include pricing information when available
3. Create a pricing file at `data/models/provider/<provider>/pricing.md` if it doesn't exist

#### Adding MCP Tools

1. Add your MCP tool to the MCP Tools table
2. Include a clear description and use case
3. Follow the existing format and style

#### Adding Pricing Information

Create pricing files following this structure:

```markdown
# Provider Name API Pricing

_Last updated: YYYY-MM-DD_

Source: [Provider Pricing](https://provider.com/pricing)

## Latest Models

| Model      | Input Price (/MTok) | Output Price (/MTok) | Prompt Caching Write (/MTok) | Prompt Caching Read (/MTok) |
| ---------- | ------------------- | -------------------- | ---------------------------- | --------------------------- |
| Model Name | $X.XX               | $X.XX                | $X.XX                        | $X.XX                       |

## Notes

- Prices are per million tokens (MTok).
- Include any relevant pricing notes.
- Link to the official source for updates.
```

## 🎨 Code Formatting

**Important**: Always run the formatting command before submitting your changes:

```bash
make fmt
```

This command uses Prettier to ensure consistent code formatting across the project. The formatting is automated and will:

- Format Markdown files
- Ensure consistent spacing and indentation
- Maintain the project's style guidelines

## 📋 Contribution Guidelines

### Content Quality Standards

1. **Accuracy**: Ensure all information is current and accurate
2. **Clarity**: Use clear, concise descriptions
3. **Consistency**: Follow the existing format and style
4. **Attribution**: Always include proper source links and references

### File Organization

- **AI Tools**: Add to the main README.md table
- **AI Models**: Add to README.md and create/update pricing files in `data/models/provider/`
- **MCP Tools**: Add to the MCP Tools section in README.md
- **Prompts**: Add to the Prompts section (content coming soon)

### Commit Message Guidelines

Use clear, descriptive commit messages:

- `feat: add new AI tool [Tool Name]`
- `update: pricing information for [Provider]`
- `docs: improve contributing guidelines`
- `fix: correct pricing data for [Model]`

## 🔍 Review Process

1. **Self-Review**: Before submitting, ensure:

   - Code is properly formatted (`make fmt` has been run)
   - All links are working
   - Information is accurate and up-to-date
   - Follows the existing format

2. **Pull Request**:

   - Create a clear PR title and description
   - Reference any related issues
   - Include screenshots if adding visual content

3. **Review**: Maintainers will review your contribution for:
   - Content accuracy
   - Format consistency
   - Documentation quality

## 🐛 Reporting Issues

If you find errors, outdated information, or have suggestions:

1. Check existing issues first
2. Create a detailed issue with:
   - Clear description of the problem
   - Steps to reproduce (if applicable)
   - Suggested solution (if you have one)

## 📚 Project Structure

```
lm-awesome/
├── README.md                     # Main documentation
├── CONTRIBUTING.md               # This file
├── Makefile                       # Build and formatting commands
├── data/
│   └── models/
│       └── provider/
│           ├── anthropic/
│           │   └── pricing.md
│           ├── openai/
│           │   └── pricing.md
│           └── openrouter/
│               └── anthropic/
│                   └── pricing.md
└── .github/
    ├── prompts/
    │   ├── add-object.prompt.md
    │   └── add-pricing.prompt.md
    └── instructions/
        └── readme-file.instructions.md
```

## 💡 Tips for Contributors

1. **Use VS Code prompts** when possible - they automate much of the formatting work
2. **Keep descriptions concise** but informative
3. **Update pricing regularly** as AI model pricing changes frequently
4. **Test links** before submitting to ensure they work
5. **Follow the existing style** to maintain consistency

## 📄 License

By contributing to this project, you agree that your contributions will be licensed under the same [MIT License](LICENSE) that covers the project.

---

Thank you for helping make LM AWESOME a valuable resource for the AI community! 🚀
