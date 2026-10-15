# JobFit AI — Assessment 4 Dual-Agent System

**Unit:** COIT12204 AI-Assisted Software Development  
**Project:** JobFit AI — Dual-Agent Job Application Assistant

This project extends the Assessment 3 JobFit single-agent application into a controlled dual-agent pipeline.

## Architecture

1. **Agent 1 — Job Requirements Analyst** analyses only the job advertisement.
2. **Orchestrator** validates and logs the message, controls routing, iteration limits and timeout behaviour.
3. **Agent 2 — Candidate Match Reviewer** compares Agent 1's structured requirements with only the skills supplied by the user.
4. **Orchestrator** validates the final response and returns it to the FastAPI web interface.

## Assessment 4 features

- Two clearly specialised agents
- Pydantic message schema
- Structured agent-to-agent communication
- Orchestrator with explicit routing
- Conversation/workflow step tracking
- Maximum iteration guardrail
- Per-agent timeout guardrail
- Invalid receiver handling
- Structured output validation
- Safe fallback behaviour
- Console and file logging
- FastAPI web interface
- Automated pytest tests
- Controlled invalid-receiver failure demonstration

## Files to explain in the video/report

- `app/agents/job_requirements_agent.py`
- `app/agents/candidate_match_agent.py`
- `app/message_schema.py`
- `app/orchestrator.py`
- `app/state.py`
- `app/logging_config.py`
- `app/main.py`
- `tests/`

## First setup on Windows / VS Code

1. Open this folder in VS Code.
2. Open **Terminal > New Terminal**.
3. Run:

```powershell
.\FIRST_SETUP.bat
```

4. Open `.env`.
5. Replace `your_gemini_api_key_here` with your own Gemini key.
6. If your account uses a different current Gemini model, update `GEMINI_MODEL` in `.env`.
7. Save the file.
8. Run:

```powershell
.\RUN_JOBFIT.bat
```

9. Open:

- Website: `http://127.0.0.1:8001/`
- Swagger: `http://127.0.0.1:8001/docs`
- Health: `http://127.0.0.1:8001/health`
- Recent logs: `http://127.0.0.1:8001/api/system/logs`

## Tests

Run:

```powershell
.\RUN_TESTS.bat
```

The tests mock live model behaviour where appropriate, so they do not need to spend Gemini quota.

## Required authentic assessment evidence

Do not invent these. Run the application and capture your own evidence:

1. Three successful agent-to-agent interactions.
2. Two failure cases:
   - invalid/empty user input (FastAPI validation), and
   - invalid receiver using the **Demo invalid receiver** button or `/api/demo/invalid-receiver`.
3. Two improvements made after debugging.
4. Screenshots of the logs and final outputs.
5. A 3–5 minute video showing agent communication, orchestrator routing, logs, a failure case and final output.

## Security

Never upload a real `.env` file or API key to GitHub. `.env` is already excluded by `.gitignore`.
