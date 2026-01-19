---
name: prompt-engineering
description: Design and iterate on prompts for LLMs. Use when creating or improving prompts.
---

## Prompt Structure

### Basic Template
```
[ROLE] You are a [specific role with expertise].

[CONTEXT] Background information the model needs.

[TASK] Clear, specific instructions for what to do.

[FORMAT] How the output should be structured.

[EXAMPLES] (Optional) Few-shot demonstrations.

[CONSTRAINTS] What NOT to do or limitations.
```

## Best Practices

### Be Specific
❌ "Summarize this"
✅ "Summarize this article in 3 bullet points, each under 20 words, focusing on the main arguments"

### Use Delimiters
```
Analyze the following code:
```python
{code_here}
```

Provide feedback on:
1. Readability
2. Performance
3. Security
```

### Provide Examples (Few-Shot)
```
Convert these sentences to formal tone:

Input: "Hey, can u help me out?"
Output: "Hello, would you be able to assist me?"

Input: "That's cool, thx!"
Output: "That is excellent, thank you."

Input: "{user_input}"
Output:
```

### Chain of Thought
```
Solve this step by step:
1. First, identify the key variables
2. Then, set up the equation
3. Finally, solve and verify

Problem: {problem}
```

## Prompt Patterns

### Persona Pattern
```
You are a senior Python developer with 15 years of experience.
You value clean, readable code over clever one-liners.
You always consider edge cases and error handling.
```

### Output Format Pattern
```
Respond in this exact JSON format:
{
  "summary": "one sentence summary",
  "key_points": ["point 1", "point 2"],
  "confidence": 0.0-1.0
}
```

### Guardrails Pattern
```
Important constraints:
- Do NOT make up information
- If unsure, say "I don't know"
- Do NOT include personal opinions
- Stay focused on the specific question
```

## Iteration Process

1. **Start simple** - Basic prompt without examples
2. **Test edge cases** - Try inputs that might break it
3. **Add constraints** - Address failure modes
4. **Add examples** - If model misunderstands format
5. **Refine wording** - Small changes can have big impact

## Testing Checklist
- [ ] Works with typical inputs
- [ ] Handles edge cases gracefully
- [ ] Produces consistent output format
- [ ] Fails safely (doesn't hallucinate)
- [ ] Runs within token limits
