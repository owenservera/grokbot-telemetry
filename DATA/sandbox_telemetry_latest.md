# sandbox_telemetry_parse — 2026-11-24 12:56:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2292834 lines=5082
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5067 |
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
| `chromeBrowserPssKb` | {'int': 5067} |
| `chromeGpuPssKb` | {'int': 5067} |
| `chromeOtherPssKb` | {'int': 5067} |
| `chromeProcesses` | {'int': 5067} |
| `chromeProfiles` | {'int': 5067} |
| `chromeRendererMaxPssKb` | {'int': 5067} |
| `chromeRendererPssKb` | {'int': 5067} |
| `chromeRenderers` | {'int': 5067} |
| `chromeTabs` | {'int': 5067} |
| `chromeTabsProbedProfiles` | {'int': 5067} |
| `chromeUtilityPssKb` | {'int': 5067} |
| `desktopPssKb` | {'int': 5067} |
| `hostPssKb` | {'int': 5067} |
| `kind` | {'str': 5067} |
| `memAvailableKb` | {'int': 5067} |
| `memTotalKb` | {'int': 5067} |
| `otherPssKb` | {'int': 5067} |
| `processes` | {'int': 5067} |
| `pssFallbackProcesses` | {'int': 5067} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
