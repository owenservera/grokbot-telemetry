# sandbox_telemetry_parse — 2026-11-25 21:44:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2934699 lines=6501
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6486 |
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
| `chromeBrowserPssKb` | {'int': 6486} |
| `chromeGpuPssKb` | {'int': 6486} |
| `chromeOtherPssKb` | {'int': 6486} |
| `chromeProcesses` | {'int': 6486} |
| `chromeProfiles` | {'int': 6486} |
| `chromeRendererMaxPssKb` | {'int': 6486} |
| `chromeRendererPssKb` | {'int': 6486} |
| `chromeRenderers` | {'int': 6486} |
| `chromeTabs` | {'int': 6486} |
| `chromeTabsProbedProfiles` | {'int': 6486} |
| `chromeUtilityPssKb` | {'int': 6486} |
| `desktopPssKb` | {'int': 6486} |
| `hostPssKb` | {'int': 6486} |
| `kind` | {'str': 6486} |
| `memAvailableKb` | {'int': 6486} |
| `memTotalKb` | {'int': 6486} |
| `otherPssKb` | {'int': 6486} |
| `processes` | {'int': 6486} |
| `pssFallbackProcesses` | {'int': 6486} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
