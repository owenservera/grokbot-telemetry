# sandbox_telemetry_parse — 2026-11-10 22:05:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1345425 lines=2981
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2972 |
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
| `chromeBrowserPssKb` | {'int': 2972} |
| `chromeGpuPssKb` | {'int': 2972} |
| `chromeOtherPssKb` | {'int': 2972} |
| `chromeProcesses` | {'int': 2972} |
| `chromeProfiles` | {'int': 2972} |
| `chromeRendererMaxPssKb` | {'int': 2972} |
| `chromeRendererPssKb` | {'int': 2972} |
| `chromeRenderers` | {'int': 2972} |
| `chromeTabs` | {'int': 2972} |
| `chromeTabsProbedProfiles` | {'int': 2972} |
| `chromeUtilityPssKb` | {'int': 2972} |
| `desktopPssKb` | {'int': 2972} |
| `hostPssKb` | {'int': 2972} |
| `kind` | {'str': 2972} |
| `memAvailableKb` | {'int': 2972} |
| `memTotalKb` | {'int': 2972} |
| `otherPssKb` | {'int': 2972} |
| `processes` | {'int': 2972} |
| `pssFallbackProcesses` | {'int': 2972} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
