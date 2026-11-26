# sandbox_telemetry_parse — 2026-11-26 04:21:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3068566 lines=6797
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6782 |
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
| `chromeBrowserPssKb` | {'int': 6782} |
| `chromeGpuPssKb` | {'int': 6782} |
| `chromeOtherPssKb` | {'int': 6782} |
| `chromeProcesses` | {'int': 6782} |
| `chromeProfiles` | {'int': 6782} |
| `chromeRendererMaxPssKb` | {'int': 6782} |
| `chromeRendererPssKb` | {'int': 6782} |
| `chromeRenderers` | {'int': 6782} |
| `chromeTabs` | {'int': 6782} |
| `chromeTabsProbedProfiles` | {'int': 6782} |
| `chromeUtilityPssKb` | {'int': 6782} |
| `desktopPssKb` | {'int': 6782} |
| `hostPssKb` | {'int': 6782} |
| `kind` | {'str': 6782} |
| `memAvailableKb` | {'int': 6782} |
| `memTotalKb` | {'int': 6782} |
| `otherPssKb` | {'int': 6782} |
| `processes` | {'int': 6782} |
| `pssFallbackProcesses` | {'int': 6782} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
