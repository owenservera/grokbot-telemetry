# sandbox_telemetry_parse — 2026-11-27 20:33:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=581085 lines=1291
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1283 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1283} |
| `chromeGpuPssKb` | {'int': 1283} |
| `chromeOtherPssKb` | {'int': 1283} |
| `chromeProcesses` | {'int': 1283} |
| `chromeProfiles` | {'int': 1283} |
| `chromeRendererMaxPssKb` | {'int': 1283} |
| `chromeRendererPssKb` | {'int': 1283} |
| `chromeRenderers` | {'int': 1283} |
| `chromeTabs` | {'int': 1283} |
| `chromeTabsProbedProfiles` | {'int': 1283} |
| `chromeUtilityPssKb` | {'int': 1283} |
| `desktopPssKb` | {'int': 1283} |
| `hostPssKb` | {'int': 1283} |
| `kind` | {'str': 1283} |
| `memAvailableKb` | {'int': 1283} |
| `memTotalKb` | {'int': 1283} |
| `otherPssKb` | {'int': 1283} |
| `processes` | {'int': 1283} |
| `pssFallbackProcesses` | {'int': 1283} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
