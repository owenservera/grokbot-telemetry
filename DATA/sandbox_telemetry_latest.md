# sandbox_telemetry_parse — 2026-11-25 13:08:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2768286 lines=6133
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6118 |
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
| `chromeBrowserPssKb` | {'int': 6118} |
| `chromeGpuPssKb` | {'int': 6118} |
| `chromeOtherPssKb` | {'int': 6118} |
| `chromeProcesses` | {'int': 6118} |
| `chromeProfiles` | {'int': 6118} |
| `chromeRendererMaxPssKb` | {'int': 6118} |
| `chromeRendererPssKb` | {'int': 6118} |
| `chromeRenderers` | {'int': 6118} |
| `chromeTabs` | {'int': 6118} |
| `chromeTabsProbedProfiles` | {'int': 6118} |
| `chromeUtilityPssKb` | {'int': 6118} |
| `desktopPssKb` | {'int': 6118} |
| `hostPssKb` | {'int': 6118} |
| `kind` | {'str': 6118} |
| `memAvailableKb` | {'int': 6118} |
| `memTotalKb` | {'int': 6118} |
| `otherPssKb` | {'int': 6118} |
| `processes` | {'int': 6118} |
| `pssFallbackProcesses` | {'int': 6118} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
