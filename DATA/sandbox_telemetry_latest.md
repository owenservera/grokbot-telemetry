# sandbox_telemetry_parse — 2026-10-12 17:38:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=638612 lines=1417
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1412 |
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
| `chromeBrowserPssKb` | {'int': 1412} |
| `chromeGpuPssKb` | {'int': 1412} |
| `chromeOtherPssKb` | {'int': 1412} |
| `chromeProcesses` | {'int': 1412} |
| `chromeProfiles` | {'int': 1412} |
| `chromeRendererMaxPssKb` | {'int': 1412} |
| `chromeRendererPssKb` | {'int': 1412} |
| `chromeRenderers` | {'int': 1412} |
| `chromeTabs` | {'int': 1412} |
| `chromeTabsProbedProfiles` | {'int': 1412} |
| `chromeUtilityPssKb` | {'int': 1412} |
| `desktopPssKb` | {'int': 1412} |
| `hostPssKb` | {'int': 1412} |
| `kind` | {'str': 1412} |
| `memAvailableKb` | {'int': 1412} |
| `memTotalKb` | {'int': 1412} |
| `otherPssKb` | {'int': 1412} |
| `processes` | {'int': 1412} |
| `pssFallbackProcesses` | {'int': 1412} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
