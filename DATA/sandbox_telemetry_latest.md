# sandbox_telemetry_parse — 2026-11-24 15:33:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2343063 lines=5193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5178 |
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
| `chromeBrowserPssKb` | {'int': 5178} |
| `chromeGpuPssKb` | {'int': 5178} |
| `chromeOtherPssKb` | {'int': 5178} |
| `chromeProcesses` | {'int': 5178} |
| `chromeProfiles` | {'int': 5178} |
| `chromeRendererMaxPssKb` | {'int': 5178} |
| `chromeRendererPssKb` | {'int': 5178} |
| `chromeRenderers` | {'int': 5178} |
| `chromeTabs` | {'int': 5178} |
| `chromeTabsProbedProfiles` | {'int': 5178} |
| `chromeUtilityPssKb` | {'int': 5178} |
| `desktopPssKb` | {'int': 5178} |
| `hostPssKb` | {'int': 5178} |
| `kind` | {'str': 5178} |
| `memAvailableKb` | {'int': 5178} |
| `memTotalKb` | {'int': 5178} |
| `otherPssKb` | {'int': 5178} |
| `processes` | {'int': 5178} |
| `pssFallbackProcesses` | {'int': 5178} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
