# sandbox_telemetry_parse — 2026-11-12 05:23:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1986581 lines=4398
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4389 |
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
| `chromeBrowserPssKb` | {'int': 4389} |
| `chromeGpuPssKb` | {'int': 4389} |
| `chromeOtherPssKb` | {'int': 4389} |
| `chromeProcesses` | {'int': 4389} |
| `chromeProfiles` | {'int': 4389} |
| `chromeRendererMaxPssKb` | {'int': 4389} |
| `chromeRendererPssKb` | {'int': 4389} |
| `chromeRenderers` | {'int': 4389} |
| `chromeTabs` | {'int': 4389} |
| `chromeTabsProbedProfiles` | {'int': 4389} |
| `chromeUtilityPssKb` | {'int': 4389} |
| `desktopPssKb` | {'int': 4389} |
| `hostPssKb` | {'int': 4389} |
| `kind` | {'str': 4389} |
| `memAvailableKb` | {'int': 4389} |
| `memTotalKb` | {'int': 4389} |
| `otherPssKb` | {'int': 4389} |
| `processes` | {'int': 4389} |
| `pssFallbackProcesses` | {'int': 4389} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
