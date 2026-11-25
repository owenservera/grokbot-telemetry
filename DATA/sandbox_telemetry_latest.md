# sandbox_telemetry_parse — 2026-11-25 23:34:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2975395 lines=6591
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6576 |
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
| `chromeBrowserPssKb` | {'int': 6576} |
| `chromeGpuPssKb` | {'int': 6576} |
| `chromeOtherPssKb` | {'int': 6576} |
| `chromeProcesses` | {'int': 6576} |
| `chromeProfiles` | {'int': 6576} |
| `chromeRendererMaxPssKb` | {'int': 6576} |
| `chromeRendererPssKb` | {'int': 6576} |
| `chromeRenderers` | {'int': 6576} |
| `chromeTabs` | {'int': 6576} |
| `chromeTabsProbedProfiles` | {'int': 6576} |
| `chromeUtilityPssKb` | {'int': 6576} |
| `desktopPssKb` | {'int': 6576} |
| `hostPssKb` | {'int': 6576} |
| `kind` | {'str': 6576} |
| `memAvailableKb` | {'int': 6576} |
| `memTotalKb` | {'int': 6576} |
| `otherPssKb` | {'int': 6576} |
| `processes` | {'int': 6576} |
| `pssFallbackProcesses` | {'int': 6576} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
