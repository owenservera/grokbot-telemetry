# sandbox_telemetry_parse — 2026-10-26 22:56:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=187017 lines=417
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 412 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 412} |
| `chromeGpuPssKb` | {'int': 412} |
| `chromeOtherPssKb` | {'int': 412} |
| `chromeProcesses` | {'int': 412} |
| `chromeProfiles` | {'int': 412} |
| `chromeRendererMaxPssKb` | {'int': 412} |
| `chromeRendererPssKb` | {'int': 412} |
| `chromeRenderers` | {'int': 412} |
| `chromeTabs` | {'int': 412} |
| `chromeTabsProbedProfiles` | {'int': 412} |
| `chromeUtilityPssKb` | {'int': 412} |
| `desktopPssKb` | {'int': 412} |
| `hostPssKb` | {'int': 412} |
| `kind` | {'str': 412} |
| `memAvailableKb` | {'int': 412} |
| `memTotalKb` | {'int': 412} |
| `otherPssKb` | {'int': 412} |
| `processes` | {'int': 412} |
| `pssFallbackProcesses` | {'int': 412} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
