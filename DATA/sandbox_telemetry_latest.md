# sandbox_telemetry_parse — 2026-11-12 20:28:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2314802 lines=5123
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5114 |
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
| `chromeBrowserPssKb` | {'int': 5114} |
| `chromeGpuPssKb` | {'int': 5114} |
| `chromeOtherPssKb` | {'int': 5114} |
| `chromeProcesses` | {'int': 5114} |
| `chromeProfiles` | {'int': 5114} |
| `chromeRendererMaxPssKb` | {'int': 5114} |
| `chromeRendererPssKb` | {'int': 5114} |
| `chromeRenderers` | {'int': 5114} |
| `chromeTabs` | {'int': 5114} |
| `chromeTabsProbedProfiles` | {'int': 5114} |
| `chromeUtilityPssKb` | {'int': 5114} |
| `desktopPssKb` | {'int': 5114} |
| `hostPssKb` | {'int': 5114} |
| `kind` | {'str': 5114} |
| `memAvailableKb` | {'int': 5114} |
| `memTotalKb` | {'int': 5114} |
| `otherPssKb` | {'int': 5114} |
| `processes` | {'int': 5114} |
| `pssFallbackProcesses` | {'int': 5114} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
