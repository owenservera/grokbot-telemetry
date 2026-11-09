# sandbox_telemetry_parse — 2026-11-10 00:08:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=898276 lines=1993
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1984 |
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
| `chromeBrowserPssKb` | {'int': 1984} |
| `chromeGpuPssKb` | {'int': 1984} |
| `chromeOtherPssKb` | {'int': 1984} |
| `chromeProcesses` | {'int': 1984} |
| `chromeProfiles` | {'int': 1984} |
| `chromeRendererMaxPssKb` | {'int': 1984} |
| `chromeRendererPssKb` | {'int': 1984} |
| `chromeRenderers` | {'int': 1984} |
| `chromeTabs` | {'int': 1984} |
| `chromeTabsProbedProfiles` | {'int': 1984} |
| `chromeUtilityPssKb` | {'int': 1984} |
| `desktopPssKb` | {'int': 1984} |
| `hostPssKb` | {'int': 1984} |
| `kind` | {'str': 1984} |
| `memAvailableKb` | {'int': 1984} |
| `memTotalKb` | {'int': 1984} |
| `otherPssKb` | {'int': 1984} |
| `processes` | {'int': 1984} |
| `pssFallbackProcesses` | {'int': 1984} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
