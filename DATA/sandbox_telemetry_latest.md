# sandbox_telemetry_parse — 2026-11-10 12:33:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1137611 lines=2522
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2513 |
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
| `chromeBrowserPssKb` | {'int': 2513} |
| `chromeGpuPssKb` | {'int': 2513} |
| `chromeOtherPssKb` | {'int': 2513} |
| `chromeProcesses` | {'int': 2513} |
| `chromeProfiles` | {'int': 2513} |
| `chromeRendererMaxPssKb` | {'int': 2513} |
| `chromeRendererPssKb` | {'int': 2513} |
| `chromeRenderers` | {'int': 2513} |
| `chromeTabs` | {'int': 2513} |
| `chromeTabsProbedProfiles` | {'int': 2513} |
| `chromeUtilityPssKb` | {'int': 2513} |
| `desktopPssKb` | {'int': 2513} |
| `hostPssKb` | {'int': 2513} |
| `kind` | {'str': 2513} |
| `memAvailableKb` | {'int': 2513} |
| `memTotalKb` | {'int': 2513} |
| `otherPssKb` | {'int': 2513} |
| `processes` | {'int': 2513} |
| `pssFallbackProcesses` | {'int': 2513} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
