# sandbox_telemetry_parse — 2026-11-26 15:56:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3319675 lines=7352
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7337 |
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
| `chromeBrowserPssKb` | {'int': 7337} |
| `chromeGpuPssKb` | {'int': 7337} |
| `chromeOtherPssKb` | {'int': 7337} |
| `chromeProcesses` | {'int': 7337} |
| `chromeProfiles` | {'int': 7337} |
| `chromeRendererMaxPssKb` | {'int': 7337} |
| `chromeRendererPssKb` | {'int': 7337} |
| `chromeRenderers` | {'int': 7337} |
| `chromeTabs` | {'int': 7337} |
| `chromeTabsProbedProfiles` | {'int': 7337} |
| `chromeUtilityPssKb` | {'int': 7337} |
| `desktopPssKb` | {'int': 7337} |
| `hostPssKb` | {'int': 7337} |
| `kind` | {'str': 7337} |
| `memAvailableKb` | {'int': 7337} |
| `memTotalKb` | {'int': 7337} |
| `otherPssKb` | {'int': 7337} |
| `processes` | {'int': 7337} |
| `pssFallbackProcesses` | {'int': 7337} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
