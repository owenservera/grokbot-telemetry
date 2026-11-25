# sandbox_telemetry_parse — 2026-11-25 22:31:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2952327 lines=6540
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6525 |
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
| `chromeBrowserPssKb` | {'int': 6525} |
| `chromeGpuPssKb` | {'int': 6525} |
| `chromeOtherPssKb` | {'int': 6525} |
| `chromeProcesses` | {'int': 6525} |
| `chromeProfiles` | {'int': 6525} |
| `chromeRendererMaxPssKb` | {'int': 6525} |
| `chromeRendererPssKb` | {'int': 6525} |
| `chromeRenderers` | {'int': 6525} |
| `chromeTabs` | {'int': 6525} |
| `chromeTabsProbedProfiles` | {'int': 6525} |
| `chromeUtilityPssKb` | {'int': 6525} |
| `desktopPssKb` | {'int': 6525} |
| `hostPssKb` | {'int': 6525} |
| `kind` | {'str': 6525} |
| `memAvailableKb` | {'int': 6525} |
| `memTotalKb` | {'int': 6525} |
| `otherPssKb` | {'int': 6525} |
| `processes` | {'int': 6525} |
| `pssFallbackProcesses` | {'int': 6525} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
