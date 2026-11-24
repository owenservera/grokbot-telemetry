# sandbox_telemetry_parse — 2026-11-24 13:01:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2293286 lines=5083
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5068 |
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
| `chromeBrowserPssKb` | {'int': 5068} |
| `chromeGpuPssKb` | {'int': 5068} |
| `chromeOtherPssKb` | {'int': 5068} |
| `chromeProcesses` | {'int': 5068} |
| `chromeProfiles` | {'int': 5068} |
| `chromeRendererMaxPssKb` | {'int': 5068} |
| `chromeRendererPssKb` | {'int': 5068} |
| `chromeRenderers` | {'int': 5068} |
| `chromeTabs` | {'int': 5068} |
| `chromeTabsProbedProfiles` | {'int': 5068} |
| `chromeUtilityPssKb` | {'int': 5068} |
| `desktopPssKb` | {'int': 5068} |
| `hostPssKb` | {'int': 5068} |
| `kind` | {'str': 5068} |
| `memAvailableKb` | {'int': 5068} |
| `memTotalKb` | {'int': 5068} |
| `otherPssKb` | {'int': 5068} |
| `processes` | {'int': 5068} |
| `pssFallbackProcesses` | {'int': 5068} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
