# sandbox_telemetry_parse — 2026-11-19 07:31:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1172832 lines=2601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2592 |
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
| `chromeBrowserPssKb` | {'int': 2592} |
| `chromeGpuPssKb` | {'int': 2592} |
| `chromeOtherPssKb` | {'int': 2592} |
| `chromeProcesses` | {'int': 2592} |
| `chromeProfiles` | {'int': 2592} |
| `chromeRendererMaxPssKb` | {'int': 2592} |
| `chromeRendererPssKb` | {'int': 2592} |
| `chromeRenderers` | {'int': 2592} |
| `chromeTabs` | {'int': 2592} |
| `chromeTabsProbedProfiles` | {'int': 2592} |
| `chromeUtilityPssKb` | {'int': 2592} |
| `desktopPssKb` | {'int': 2592} |
| `hostPssKb` | {'int': 2592} |
| `kind` | {'str': 2592} |
| `memAvailableKb` | {'int': 2592} |
| `memTotalKb` | {'int': 2592} |
| `otherPssKb` | {'int': 2592} |
| `processes` | {'int': 2592} |
| `pssFallbackProcesses` | {'int': 2592} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
