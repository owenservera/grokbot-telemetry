# sandbox_telemetry_parse — 2026-11-09 18:21:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=785631 lines=1744
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1735 |
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
| `chromeBrowserPssKb` | {'int': 1735} |
| `chromeGpuPssKb` | {'int': 1735} |
| `chromeOtherPssKb` | {'int': 1735} |
| `chromeProcesses` | {'int': 1735} |
| `chromeProfiles` | {'int': 1735} |
| `chromeRendererMaxPssKb` | {'int': 1735} |
| `chromeRendererPssKb` | {'int': 1735} |
| `chromeRenderers` | {'int': 1735} |
| `chromeTabs` | {'int': 1735} |
| `chromeTabsProbedProfiles` | {'int': 1735} |
| `chromeUtilityPssKb` | {'int': 1735} |
| `desktopPssKb` | {'int': 1735} |
| `hostPssKb` | {'int': 1735} |
| `kind` | {'str': 1735} |
| `memAvailableKb` | {'int': 1735} |
| `memTotalKb` | {'int': 1735} |
| `otherPssKb` | {'int': 1735} |
| `processes` | {'int': 1735} |
| `pssFallbackProcesses` | {'int': 1735} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
