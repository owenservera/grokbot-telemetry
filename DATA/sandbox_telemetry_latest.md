# sandbox_telemetry_parse — 2026-11-24 20:43:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2442233 lines=5412
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5397 |
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
| `chromeBrowserPssKb` | {'int': 5397} |
| `chromeGpuPssKb` | {'int': 5397} |
| `chromeOtherPssKb` | {'int': 5397} |
| `chromeProcesses` | {'int': 5397} |
| `chromeProfiles` | {'int': 5397} |
| `chromeRendererMaxPssKb` | {'int': 5397} |
| `chromeRendererPssKb` | {'int': 5397} |
| `chromeRenderers` | {'int': 5397} |
| `chromeTabs` | {'int': 5397} |
| `chromeTabsProbedProfiles` | {'int': 5397} |
| `chromeUtilityPssKb` | {'int': 5397} |
| `desktopPssKb` | {'int': 5397} |
| `hostPssKb` | {'int': 5397} |
| `kind` | {'str': 5397} |
| `memAvailableKb` | {'int': 5397} |
| `memTotalKb` | {'int': 5397} |
| `otherPssKb` | {'int': 5397} |
| `processes` | {'int': 5397} |
| `pssFallbackProcesses` | {'int': 5397} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
