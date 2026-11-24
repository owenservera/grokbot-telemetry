# sandbox_telemetry_parse — 2026-11-24 20:39:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2440421 lines=5408
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5393 |
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
| `chromeBrowserPssKb` | {'int': 5393} |
| `chromeGpuPssKb` | {'int': 5393} |
| `chromeOtherPssKb` | {'int': 5393} |
| `chromeProcesses` | {'int': 5393} |
| `chromeProfiles` | {'int': 5393} |
| `chromeRendererMaxPssKb` | {'int': 5393} |
| `chromeRendererPssKb` | {'int': 5393} |
| `chromeRenderers` | {'int': 5393} |
| `chromeTabs` | {'int': 5393} |
| `chromeTabsProbedProfiles` | {'int': 5393} |
| `chromeUtilityPssKb` | {'int': 5393} |
| `desktopPssKb` | {'int': 5393} |
| `hostPssKb` | {'int': 5393} |
| `kind` | {'str': 5393} |
| `memAvailableKb` | {'int': 5393} |
| `memTotalKb` | {'int': 5393} |
| `otherPssKb` | {'int': 5393} |
| `processes` | {'int': 5393} |
| `pssFallbackProcesses` | {'int': 5393} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
