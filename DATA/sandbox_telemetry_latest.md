# sandbox_telemetry_parse — 2026-11-23 22:53:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2023332 lines=4486
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4471 |
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
| `chromeBrowserPssKb` | {'int': 4471} |
| `chromeGpuPssKb` | {'int': 4471} |
| `chromeOtherPssKb` | {'int': 4471} |
| `chromeProcesses` | {'int': 4471} |
| `chromeProfiles` | {'int': 4471} |
| `chromeRendererMaxPssKb` | {'int': 4471} |
| `chromeRendererPssKb` | {'int': 4471} |
| `chromeRenderers` | {'int': 4471} |
| `chromeTabs` | {'int': 4471} |
| `chromeTabsProbedProfiles` | {'int': 4471} |
| `chromeUtilityPssKb` | {'int': 4471} |
| `desktopPssKb` | {'int': 4471} |
| `hostPssKb` | {'int': 4471} |
| `kind` | {'str': 4471} |
| `memAvailableKb` | {'int': 4471} |
| `memTotalKb` | {'int': 4471} |
| `otherPssKb` | {'int': 4471} |
| `processes` | {'int': 4471} |
| `pssFallbackProcesses` | {'int': 4471} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
