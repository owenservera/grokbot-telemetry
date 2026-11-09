# sandbox_telemetry_parse — 2026-11-09 13:58:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=688262 lines=1529
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1520 |
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
| `chromeBrowserPssKb` | {'int': 1520} |
| `chromeGpuPssKb` | {'int': 1520} |
| `chromeOtherPssKb` | {'int': 1520} |
| `chromeProcesses` | {'int': 1520} |
| `chromeProfiles` | {'int': 1520} |
| `chromeRendererMaxPssKb` | {'int': 1520} |
| `chromeRendererPssKb` | {'int': 1520} |
| `chromeRenderers` | {'int': 1520} |
| `chromeTabs` | {'int': 1520} |
| `chromeTabsProbedProfiles` | {'int': 1520} |
| `chromeUtilityPssKb` | {'int': 1520} |
| `desktopPssKb` | {'int': 1520} |
| `hostPssKb` | {'int': 1520} |
| `kind` | {'str': 1520} |
| `memAvailableKb` | {'int': 1520} |
| `memTotalKb` | {'int': 1520} |
| `otherPssKb` | {'int': 1520} |
| `processes` | {'int': 1520} |
| `pssFallbackProcesses` | {'int': 1520} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
