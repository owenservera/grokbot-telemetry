# sandbox_telemetry_parse — 2026-11-09 19:43:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=813248 lines=1805
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1796 |
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
| `chromeBrowserPssKb` | {'int': 1796} |
| `chromeGpuPssKb` | {'int': 1796} |
| `chromeOtherPssKb` | {'int': 1796} |
| `chromeProcesses` | {'int': 1796} |
| `chromeProfiles` | {'int': 1796} |
| `chromeRendererMaxPssKb` | {'int': 1796} |
| `chromeRendererPssKb` | {'int': 1796} |
| `chromeRenderers` | {'int': 1796} |
| `chromeTabs` | {'int': 1796} |
| `chromeTabsProbedProfiles` | {'int': 1796} |
| `chromeUtilityPssKb` | {'int': 1796} |
| `desktopPssKb` | {'int': 1796} |
| `hostPssKb` | {'int': 1796} |
| `kind` | {'str': 1796} |
| `memAvailableKb` | {'int': 1796} |
| `memTotalKb` | {'int': 1796} |
| `otherPssKb` | {'int': 1796} |
| `processes` | {'int': 1796} |
| `pssFallbackProcesses` | {'int': 1796} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
