# sandbox_telemetry_parse — 2026-11-28 14:15:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=920844 lines=2042
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2034 |
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
| `chromeBrowserPssKb` | {'int': 2034} |
| `chromeGpuPssKb` | {'int': 2034} |
| `chromeOtherPssKb` | {'int': 2034} |
| `chromeProcesses` | {'int': 2034} |
| `chromeProfiles` | {'int': 2034} |
| `chromeRendererMaxPssKb` | {'int': 2034} |
| `chromeRendererPssKb` | {'int': 2034} |
| `chromeRenderers` | {'int': 2034} |
| `chromeTabs` | {'int': 2034} |
| `chromeTabsProbedProfiles` | {'int': 2034} |
| `chromeUtilityPssKb` | {'int': 2034} |
| `desktopPssKb` | {'int': 2034} |
| `hostPssKb` | {'int': 2034} |
| `kind` | {'str': 2034} |
| `memAvailableKb` | {'int': 2034} |
| `memTotalKb` | {'int': 2034} |
| `otherPssKb` | {'int': 2034} |
| `processes` | {'int': 2034} |
| `pssFallbackProcesses` | {'int': 2034} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
