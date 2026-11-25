# sandbox_telemetry_parse — 2026-11-25 02:15:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2548504 lines=5647
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5632 |
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
| `chromeBrowserPssKb` | {'int': 5632} |
| `chromeGpuPssKb` | {'int': 5632} |
| `chromeOtherPssKb` | {'int': 5632} |
| `chromeProcesses` | {'int': 5632} |
| `chromeProfiles` | {'int': 5632} |
| `chromeRendererMaxPssKb` | {'int': 5632} |
| `chromeRendererPssKb` | {'int': 5632} |
| `chromeRenderers` | {'int': 5632} |
| `chromeTabs` | {'int': 5632} |
| `chromeTabsProbedProfiles` | {'int': 5632} |
| `chromeUtilityPssKb` | {'int': 5632} |
| `desktopPssKb` | {'int': 5632} |
| `hostPssKb` | {'int': 5632} |
| `kind` | {'str': 5632} |
| `memAvailableKb` | {'int': 5632} |
| `memTotalKb` | {'int': 5632} |
| `otherPssKb` | {'int': 5632} |
| `processes` | {'int': 5632} |
| `pssFallbackProcesses` | {'int': 5632} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
