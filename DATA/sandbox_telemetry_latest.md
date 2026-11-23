# sandbox_telemetry_parse — 2026-11-24 00:42:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2059963 lines=4567
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4552 |
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
| `chromeBrowserPssKb` | {'int': 4552} |
| `chromeGpuPssKb` | {'int': 4552} |
| `chromeOtherPssKb` | {'int': 4552} |
| `chromeProcesses` | {'int': 4552} |
| `chromeProfiles` | {'int': 4552} |
| `chromeRendererMaxPssKb` | {'int': 4552} |
| `chromeRendererPssKb` | {'int': 4552} |
| `chromeRenderers` | {'int': 4552} |
| `chromeTabs` | {'int': 4552} |
| `chromeTabsProbedProfiles` | {'int': 4552} |
| `chromeUtilityPssKb` | {'int': 4552} |
| `desktopPssKb` | {'int': 4552} |
| `hostPssKb` | {'int': 4552} |
| `kind` | {'str': 4552} |
| `memAvailableKb` | {'int': 4552} |
| `memTotalKb` | {'int': 4552} |
| `otherPssKb` | {'int': 4552} |
| `processes` | {'int': 4552} |
| `pssFallbackProcesses` | {'int': 4552} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
