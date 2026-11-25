# sandbox_telemetry_parse — 2026-11-25 08:56:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2682816 lines=5944
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5929 |
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
| `chromeBrowserPssKb` | {'int': 5929} |
| `chromeGpuPssKb` | {'int': 5929} |
| `chromeOtherPssKb` | {'int': 5929} |
| `chromeProcesses` | {'int': 5929} |
| `chromeProfiles` | {'int': 5929} |
| `chromeRendererMaxPssKb` | {'int': 5929} |
| `chromeRendererPssKb` | {'int': 5929} |
| `chromeRenderers` | {'int': 5929} |
| `chromeTabs` | {'int': 5929} |
| `chromeTabsProbedProfiles` | {'int': 5929} |
| `chromeUtilityPssKb` | {'int': 5929} |
| `desktopPssKb` | {'int': 5929} |
| `hostPssKb` | {'int': 5929} |
| `kind` | {'str': 5929} |
| `memAvailableKb` | {'int': 5929} |
| `memTotalKb` | {'int': 5929} |
| `otherPssKb` | {'int': 5929} |
| `processes` | {'int': 5929} |
| `pssFallbackProcesses` | {'int': 5929} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
