# sandbox_telemetry_parse — 2026-11-25 10:54:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2725337 lines=6038
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6023 |
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
| `chromeBrowserPssKb` | {'int': 6023} |
| `chromeGpuPssKb` | {'int': 6023} |
| `chromeOtherPssKb` | {'int': 6023} |
| `chromeProcesses` | {'int': 6023} |
| `chromeProfiles` | {'int': 6023} |
| `chromeRendererMaxPssKb` | {'int': 6023} |
| `chromeRendererPssKb` | {'int': 6023} |
| `chromeRenderers` | {'int': 6023} |
| `chromeTabs` | {'int': 6023} |
| `chromeTabsProbedProfiles` | {'int': 6023} |
| `chromeUtilityPssKb` | {'int': 6023} |
| `desktopPssKb` | {'int': 6023} |
| `hostPssKb` | {'int': 6023} |
| `kind` | {'str': 6023} |
| `memAvailableKb` | {'int': 6023} |
| `memTotalKb` | {'int': 6023} |
| `otherPssKb` | {'int': 6023} |
| `processes` | {'int': 6023} |
| `pssFallbackProcesses` | {'int': 6023} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
