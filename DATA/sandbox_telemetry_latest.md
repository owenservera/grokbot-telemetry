# sandbox_telemetry_parse — 2026-11-26 08:19:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3157696 lines=6994
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6979 |
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
| `chromeBrowserPssKb` | {'int': 6979} |
| `chromeGpuPssKb` | {'int': 6979} |
| `chromeOtherPssKb` | {'int': 6979} |
| `chromeProcesses` | {'int': 6979} |
| `chromeProfiles` | {'int': 6979} |
| `chromeRendererMaxPssKb` | {'int': 6979} |
| `chromeRendererPssKb` | {'int': 6979} |
| `chromeRenderers` | {'int': 6979} |
| `chromeTabs` | {'int': 6979} |
| `chromeTabsProbedProfiles` | {'int': 6979} |
| `chromeUtilityPssKb` | {'int': 6979} |
| `desktopPssKb` | {'int': 6979} |
| `hostPssKb` | {'int': 6979} |
| `kind` | {'str': 6979} |
| `memAvailableKb` | {'int': 6979} |
| `memTotalKb` | {'int': 6979} |
| `otherPssKb` | {'int': 6979} |
| `processes` | {'int': 6979} |
| `pssFallbackProcesses` | {'int': 6979} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
