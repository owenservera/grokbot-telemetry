# sandbox_telemetry_parse — 2026-11-27 00:05:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=146724 lines=331
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 323 |
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
| `chromeBrowserPssKb` | {'int': 323} |
| `chromeGpuPssKb` | {'int': 323} |
| `chromeOtherPssKb` | {'int': 323} |
| `chromeProcesses` | {'int': 323} |
| `chromeProfiles` | {'int': 323} |
| `chromeRendererMaxPssKb` | {'int': 323} |
| `chromeRendererPssKb` | {'int': 323} |
| `chromeRenderers` | {'int': 323} |
| `chromeTabs` | {'int': 323} |
| `chromeTabsProbedProfiles` | {'int': 323} |
| `chromeUtilityPssKb` | {'int': 323} |
| `desktopPssKb` | {'int': 323} |
| `hostPssKb` | {'int': 323} |
| `kind` | {'str': 323} |
| `memAvailableKb` | {'int': 323} |
| `memTotalKb` | {'int': 323} |
| `otherPssKb` | {'int': 323} |
| `processes` | {'int': 323} |
| `pssFallbackProcesses` | {'int': 323} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
