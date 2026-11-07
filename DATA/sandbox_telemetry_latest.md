# sandbox_telemetry_parse — 2026-11-07 09:18:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=394658 lines=880
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 871 |
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
| `chromeBrowserPssKb` | {'int': 871} |
| `chromeGpuPssKb` | {'int': 871} |
| `chromeOtherPssKb` | {'int': 871} |
| `chromeProcesses` | {'int': 871} |
| `chromeProfiles` | {'int': 871} |
| `chromeRendererMaxPssKb` | {'int': 871} |
| `chromeRendererPssKb` | {'int': 871} |
| `chromeRenderers` | {'int': 871} |
| `chromeTabs` | {'int': 871} |
| `chromeTabsProbedProfiles` | {'int': 871} |
| `chromeUtilityPssKb` | {'int': 871} |
| `desktopPssKb` | {'int': 871} |
| `hostPssKb` | {'int': 871} |
| `kind` | {'str': 871} |
| `memAvailableKb` | {'int': 871} |
| `memTotalKb` | {'int': 871} |
| `otherPssKb` | {'int': 871} |
| `processes` | {'int': 871} |
| `pssFallbackProcesses` | {'int': 871} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
