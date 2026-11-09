# sandbox_telemetry_parse — 2026-11-09 20:14:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=824104 lines=1829
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1820 |
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
| `chromeBrowserPssKb` | {'int': 1820} |
| `chromeGpuPssKb` | {'int': 1820} |
| `chromeOtherPssKb` | {'int': 1820} |
| `chromeProcesses` | {'int': 1820} |
| `chromeProfiles` | {'int': 1820} |
| `chromeRendererMaxPssKb` | {'int': 1820} |
| `chromeRendererPssKb` | {'int': 1820} |
| `chromeRenderers` | {'int': 1820} |
| `chromeTabs` | {'int': 1820} |
| `chromeTabsProbedProfiles` | {'int': 1820} |
| `chromeUtilityPssKb` | {'int': 1820} |
| `desktopPssKb` | {'int': 1820} |
| `hostPssKb` | {'int': 1820} |
| `kind` | {'str': 1820} |
| `memAvailableKb` | {'int': 1820} |
| `memTotalKb` | {'int': 1820} |
| `otherPssKb` | {'int': 1820} |
| `processes` | {'int': 1820} |
| `pssFallbackProcesses` | {'int': 1820} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
