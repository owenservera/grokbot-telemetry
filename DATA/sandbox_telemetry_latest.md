# sandbox_telemetry_parse — 2026-11-28 15:13:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=938951 lines=2082
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2074 |
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
| `chromeBrowserPssKb` | {'int': 2074} |
| `chromeGpuPssKb` | {'int': 2074} |
| `chromeOtherPssKb` | {'int': 2074} |
| `chromeProcesses` | {'int': 2074} |
| `chromeProfiles` | {'int': 2074} |
| `chromeRendererMaxPssKb` | {'int': 2074} |
| `chromeRendererPssKb` | {'int': 2074} |
| `chromeRenderers` | {'int': 2074} |
| `chromeTabs` | {'int': 2074} |
| `chromeTabsProbedProfiles` | {'int': 2074} |
| `chromeUtilityPssKb` | {'int': 2074} |
| `desktopPssKb` | {'int': 2074} |
| `hostPssKb` | {'int': 2074} |
| `kind` | {'str': 2074} |
| `memAvailableKb` | {'int': 2074} |
| `memTotalKb` | {'int': 2074} |
| `otherPssKb` | {'int': 2074} |
| `processes` | {'int': 2074} |
| `pssFallbackProcesses` | {'int': 2074} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
