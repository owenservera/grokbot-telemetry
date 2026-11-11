# sandbox_telemetry_parse — 2026-11-11 02:18:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1432276 lines=3173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3164 |
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
| `chromeBrowserPssKb` | {'int': 3164} |
| `chromeGpuPssKb` | {'int': 3164} |
| `chromeOtherPssKb` | {'int': 3164} |
| `chromeProcesses` | {'int': 3164} |
| `chromeProfiles` | {'int': 3164} |
| `chromeRendererMaxPssKb` | {'int': 3164} |
| `chromeRendererPssKb` | {'int': 3164} |
| `chromeRenderers` | {'int': 3164} |
| `chromeTabs` | {'int': 3164} |
| `chromeTabsProbedProfiles` | {'int': 3164} |
| `chromeUtilityPssKb` | {'int': 3164} |
| `desktopPssKb` | {'int': 3164} |
| `hostPssKb` | {'int': 3164} |
| `kind` | {'str': 3164} |
| `memAvailableKb` | {'int': 3164} |
| `memTotalKb` | {'int': 3164} |
| `otherPssKb` | {'int': 3164} |
| `processes` | {'int': 3164} |
| `pssFallbackProcesses` | {'int': 3164} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
