# sandbox_telemetry_parse — 2026-11-24 12:04:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2277009 lines=5047
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5032 |
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
| `chromeBrowserPssKb` | {'int': 5032} |
| `chromeGpuPssKb` | {'int': 5032} |
| `chromeOtherPssKb` | {'int': 5032} |
| `chromeProcesses` | {'int': 5032} |
| `chromeProfiles` | {'int': 5032} |
| `chromeRendererMaxPssKb` | {'int': 5032} |
| `chromeRendererPssKb` | {'int': 5032} |
| `chromeRenderers` | {'int': 5032} |
| `chromeTabs` | {'int': 5032} |
| `chromeTabsProbedProfiles` | {'int': 5032} |
| `chromeUtilityPssKb` | {'int': 5032} |
| `desktopPssKb` | {'int': 5032} |
| `hostPssKb` | {'int': 5032} |
| `kind` | {'str': 5032} |
| `memAvailableKb` | {'int': 5032} |
| `memTotalKb` | {'int': 5032} |
| `otherPssKb` | {'int': 5032} |
| `processes` | {'int': 5032} |
| `pssFallbackProcesses` | {'int': 5032} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
