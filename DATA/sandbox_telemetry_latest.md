# sandbox_telemetry_parse — 2026-11-11 21:41:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1830884 lines=4054
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4045 |
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
| `chromeBrowserPssKb` | {'int': 4045} |
| `chromeGpuPssKb` | {'int': 4045} |
| `chromeOtherPssKb` | {'int': 4045} |
| `chromeProcesses` | {'int': 4045} |
| `chromeProfiles` | {'int': 4045} |
| `chromeRendererMaxPssKb` | {'int': 4045} |
| `chromeRendererPssKb` | {'int': 4045} |
| `chromeRenderers` | {'int': 4045} |
| `chromeTabs` | {'int': 4045} |
| `chromeTabsProbedProfiles` | {'int': 4045} |
| `chromeUtilityPssKb` | {'int': 4045} |
| `desktopPssKb` | {'int': 4045} |
| `hostPssKb` | {'int': 4045} |
| `kind` | {'str': 4045} |
| `memAvailableKb` | {'int': 4045} |
| `memTotalKb` | {'int': 4045} |
| `otherPssKb` | {'int': 4045} |
| `processes` | {'int': 4045} |
| `pssFallbackProcesses` | {'int': 4045} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
