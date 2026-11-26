# sandbox_telemetry_parse — 2026-11-26 13:29:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3269468 lines=7241
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7226 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7226} |
| `chromeGpuPssKb` | {'int': 7226} |
| `chromeOtherPssKb` | {'int': 7226} |
| `chromeProcesses` | {'int': 7226} |
| `chromeProfiles` | {'int': 7226} |
| `chromeRendererMaxPssKb` | {'int': 7226} |
| `chromeRendererPssKb` | {'int': 7226} |
| `chromeRenderers` | {'int': 7226} |
| `chromeTabs` | {'int': 7226} |
| `chromeTabsProbedProfiles` | {'int': 7226} |
| `chromeUtilityPssKb` | {'int': 7226} |
| `desktopPssKb` | {'int': 7226} |
| `hostPssKb` | {'int': 7226} |
| `kind` | {'str': 7226} |
| `memAvailableKb` | {'int': 7226} |
| `memTotalKb` | {'int': 7226} |
| `otherPssKb` | {'int': 7226} |
| `processes` | {'int': 7226} |
| `pssFallbackProcesses` | {'int': 7226} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
