# sandbox_telemetry_parse — 2026-11-06 17:02:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=72605 lines=168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 159 |
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
| `chromeBrowserPssKb` | {'int': 159} |
| `chromeGpuPssKb` | {'int': 159} |
| `chromeOtherPssKb` | {'int': 159} |
| `chromeProcesses` | {'int': 159} |
| `chromeProfiles` | {'int': 159} |
| `chromeRendererMaxPssKb` | {'int': 159} |
| `chromeRendererPssKb` | {'int': 159} |
| `chromeRenderers` | {'int': 159} |
| `chromeTabs` | {'int': 159} |
| `chromeTabsProbedProfiles` | {'int': 159} |
| `chromeUtilityPssKb` | {'int': 159} |
| `desktopPssKb` | {'int': 159} |
| `hostPssKb` | {'int': 159} |
| `kind` | {'str': 159} |
| `memAvailableKb` | {'int': 159} |
| `memTotalKb` | {'int': 159} |
| `otherPssKb` | {'int': 159} |
| `processes` | {'int': 159} |
| `pssFallbackProcesses` | {'int': 159} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
