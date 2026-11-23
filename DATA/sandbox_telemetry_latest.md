# sandbox_telemetry_parse — 2026-11-23 17:24:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1925095 lines=4269
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4254 |
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
| `chromeBrowserPssKb` | {'int': 4254} |
| `chromeGpuPssKb` | {'int': 4254} |
| `chromeOtherPssKb` | {'int': 4254} |
| `chromeProcesses` | {'int': 4254} |
| `chromeProfiles` | {'int': 4254} |
| `chromeRendererMaxPssKb` | {'int': 4254} |
| `chromeRendererPssKb` | {'int': 4254} |
| `chromeRenderers` | {'int': 4254} |
| `chromeTabs` | {'int': 4254} |
| `chromeTabsProbedProfiles` | {'int': 4254} |
| `chromeUtilityPssKb` | {'int': 4254} |
| `desktopPssKb` | {'int': 4254} |
| `hostPssKb` | {'int': 4254} |
| `kind` | {'str': 4254} |
| `memAvailableKb` | {'int': 4254} |
| `memTotalKb` | {'int': 4254} |
| `otherPssKb` | {'int': 4254} |
| `processes` | {'int': 4254} |
| `pssFallbackProcesses` | {'int': 4254} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
