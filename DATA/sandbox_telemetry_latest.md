# sandbox_telemetry_parse — 2026-11-17 11:14:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=365914 lines=815
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 808 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 808} |
| `chromeGpuPssKb` | {'int': 808} |
| `chromeOtherPssKb` | {'int': 808} |
| `chromeProcesses` | {'int': 808} |
| `chromeProfiles` | {'int': 808} |
| `chromeRendererMaxPssKb` | {'int': 808} |
| `chromeRendererPssKb` | {'int': 808} |
| `chromeRenderers` | {'int': 808} |
| `chromeTabs` | {'int': 808} |
| `chromeTabsProbedProfiles` | {'int': 808} |
| `chromeUtilityPssKb` | {'int': 808} |
| `desktopPssKb` | {'int': 808} |
| `hostPssKb` | {'int': 808} |
| `kind` | {'str': 808} |
| `memAvailableKb` | {'int': 808} |
| `memTotalKb` | {'int': 808} |
| `otherPssKb` | {'int': 808} |
| `processes` | {'int': 808} |
| `pssFallbackProcesses` | {'int': 808} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
