# sandbox_telemetry_parse — 2026-11-10 23:02:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1366228 lines=3027
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3018 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3018} |
| `chromeGpuPssKb` | {'int': 3018} |
| `chromeOtherPssKb` | {'int': 3018} |
| `chromeProcesses` | {'int': 3018} |
| `chromeProfiles` | {'int': 3018} |
| `chromeRendererMaxPssKb` | {'int': 3018} |
| `chromeRendererPssKb` | {'int': 3018} |
| `chromeRenderers` | {'int': 3018} |
| `chromeTabs` | {'int': 3018} |
| `chromeTabsProbedProfiles` | {'int': 3018} |
| `chromeUtilityPssKb` | {'int': 3018} |
| `desktopPssKb` | {'int': 3018} |
| `hostPssKb` | {'int': 3018} |
| `kind` | {'str': 3018} |
| `memAvailableKb` | {'int': 3018} |
| `memTotalKb` | {'int': 3018} |
| `otherPssKb` | {'int': 3018} |
| `processes` | {'int': 3018} |
| `pssFallbackProcesses` | {'int': 3018} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
