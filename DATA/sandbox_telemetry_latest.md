# sandbox_telemetry_parse — 2026-11-25 03:05:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2564326 lines=5682
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5667 |
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
| `chromeBrowserPssKb` | {'int': 5667} |
| `chromeGpuPssKb` | {'int': 5667} |
| `chromeOtherPssKb` | {'int': 5667} |
| `chromeProcesses` | {'int': 5667} |
| `chromeProfiles` | {'int': 5667} |
| `chromeRendererMaxPssKb` | {'int': 5667} |
| `chromeRendererPssKb` | {'int': 5667} |
| `chromeRenderers` | {'int': 5667} |
| `chromeTabs` | {'int': 5667} |
| `chromeTabsProbedProfiles` | {'int': 5667} |
| `chromeUtilityPssKb` | {'int': 5667} |
| `desktopPssKb` | {'int': 5667} |
| `hostPssKb` | {'int': 5667} |
| `kind` | {'str': 5667} |
| `memAvailableKb` | {'int': 5667} |
| `memTotalKb` | {'int': 5667} |
| `otherPssKb` | {'int': 5667} |
| `processes` | {'int': 5667} |
| `pssFallbackProcesses` | {'int': 5667} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
