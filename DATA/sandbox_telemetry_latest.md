# sandbox_telemetry_parse — 2026-11-26 09:29:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3187114 lines=7059
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7044 |
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
| `chromeBrowserPssKb` | {'int': 7044} |
| `chromeGpuPssKb` | {'int': 7044} |
| `chromeOtherPssKb` | {'int': 7044} |
| `chromeProcesses` | {'int': 7044} |
| `chromeProfiles` | {'int': 7044} |
| `chromeRendererMaxPssKb` | {'int': 7044} |
| `chromeRendererPssKb` | {'int': 7044} |
| `chromeRenderers` | {'int': 7044} |
| `chromeTabs` | {'int': 7044} |
| `chromeTabsProbedProfiles` | {'int': 7044} |
| `chromeUtilityPssKb` | {'int': 7044} |
| `desktopPssKb` | {'int': 7044} |
| `hostPssKb` | {'int': 7044} |
| `kind` | {'str': 7044} |
| `memAvailableKb` | {'int': 7044} |
| `memTotalKb` | {'int': 7044} |
| `otherPssKb` | {'int': 7044} |
| `processes` | {'int': 7044} |
| `pssFallbackProcesses` | {'int': 7044} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
