# sandbox_telemetry_parse — 2026-11-19 22:07:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1460752 lines=3239
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3228 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3228} |
| `chromeGpuPssKb` | {'int': 3228} |
| `chromeOtherPssKb` | {'int': 3228} |
| `chromeProcesses` | {'int': 3228} |
| `chromeProfiles` | {'int': 3228} |
| `chromeRendererMaxPssKb` | {'int': 3228} |
| `chromeRendererPssKb` | {'int': 3228} |
| `chromeRenderers` | {'int': 3228} |
| `chromeTabs` | {'int': 3228} |
| `chromeTabsProbedProfiles` | {'int': 3228} |
| `chromeUtilityPssKb` | {'int': 3228} |
| `desktopPssKb` | {'int': 3228} |
| `hostPssKb` | {'int': 3228} |
| `kind` | {'str': 3228} |
| `memAvailableKb` | {'int': 3228} |
| `memTotalKb` | {'int': 3228} |
| `otherPssKb` | {'int': 3228} |
| `processes` | {'int': 3228} |
| `pssFallbackProcesses` | {'int': 3228} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
