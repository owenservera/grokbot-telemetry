# sandbox_telemetry_parse — 2026-10-15 22:42:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1090594 lines=2417
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2412 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2412} |
| `chromeGpuPssKb` | {'int': 2412} |
| `chromeOtherPssKb` | {'int': 2412} |
| `chromeProcesses` | {'int': 2412} |
| `chromeProfiles` | {'int': 2412} |
| `chromeRendererMaxPssKb` | {'int': 2412} |
| `chromeRendererPssKb` | {'int': 2412} |
| `chromeRenderers` | {'int': 2412} |
| `chromeTabs` | {'int': 2412} |
| `chromeTabsProbedProfiles` | {'int': 2412} |
| `chromeUtilityPssKb` | {'int': 2412} |
| `desktopPssKb` | {'int': 2412} |
| `hostPssKb` | {'int': 2412} |
| `kind` | {'str': 2412} |
| `memAvailableKb` | {'int': 2412} |
| `memTotalKb` | {'int': 2412} |
| `otherPssKb` | {'int': 2412} |
| `processes` | {'int': 2412} |
| `pssFallbackProcesses` | {'int': 2412} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
