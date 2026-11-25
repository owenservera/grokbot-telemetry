# sandbox_telemetry_parse — 2026-11-25 09:53:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2703181 lines=5989
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5974 |
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
| `chromeBrowserPssKb` | {'int': 5974} |
| `chromeGpuPssKb` | {'int': 5974} |
| `chromeOtherPssKb` | {'int': 5974} |
| `chromeProcesses` | {'int': 5974} |
| `chromeProfiles` | {'int': 5974} |
| `chromeRendererMaxPssKb` | {'int': 5974} |
| `chromeRendererPssKb` | {'int': 5974} |
| `chromeRenderers` | {'int': 5974} |
| `chromeTabs` | {'int': 5974} |
| `chromeTabsProbedProfiles` | {'int': 5974} |
| `chromeUtilityPssKb` | {'int': 5974} |
| `desktopPssKb` | {'int': 5974} |
| `hostPssKb` | {'int': 5974} |
| `kind` | {'str': 5974} |
| `memAvailableKb` | {'int': 5974} |
| `memTotalKb` | {'int': 5974} |
| `otherPssKb` | {'int': 5974} |
| `processes` | {'int': 5974} |
| `pssFallbackProcesses` | {'int': 5974} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
