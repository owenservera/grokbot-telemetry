# sandbox_telemetry_parse — 2026-11-24 19:25:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2416431 lines=5355
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5340 |
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
| `chromeBrowserPssKb` | {'int': 5340} |
| `chromeGpuPssKb` | {'int': 5340} |
| `chromeOtherPssKb` | {'int': 5340} |
| `chromeProcesses` | {'int': 5340} |
| `chromeProfiles` | {'int': 5340} |
| `chromeRendererMaxPssKb` | {'int': 5340} |
| `chromeRendererPssKb` | {'int': 5340} |
| `chromeRenderers` | {'int': 5340} |
| `chromeTabs` | {'int': 5340} |
| `chromeTabsProbedProfiles` | {'int': 5340} |
| `chromeUtilityPssKb` | {'int': 5340} |
| `desktopPssKb` | {'int': 5340} |
| `hostPssKb` | {'int': 5340} |
| `kind` | {'str': 5340} |
| `memAvailableKb` | {'int': 5340} |
| `memTotalKb` | {'int': 5340} |
| `otherPssKb` | {'int': 5340} |
| `processes` | {'int': 5340} |
| `pssFallbackProcesses` | {'int': 5340} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
