# sandbox_telemetry_parse — 2026-11-23 15:08:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1885262 lines=4181
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4166 |
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
| `chromeBrowserPssKb` | {'int': 4166} |
| `chromeGpuPssKb` | {'int': 4166} |
| `chromeOtherPssKb` | {'int': 4166} |
| `chromeProcesses` | {'int': 4166} |
| `chromeProfiles` | {'int': 4166} |
| `chromeRendererMaxPssKb` | {'int': 4166} |
| `chromeRendererPssKb` | {'int': 4166} |
| `chromeRenderers` | {'int': 4166} |
| `chromeTabs` | {'int': 4166} |
| `chromeTabsProbedProfiles` | {'int': 4166} |
| `chromeUtilityPssKb` | {'int': 4166} |
| `desktopPssKb` | {'int': 4166} |
| `hostPssKb` | {'int': 4166} |
| `kind` | {'str': 4166} |
| `memAvailableKb` | {'int': 4166} |
| `memTotalKb` | {'int': 4166} |
| `otherPssKb` | {'int': 4166} |
| `processes` | {'int': 4166} |
| `pssFallbackProcesses` | {'int': 4166} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
