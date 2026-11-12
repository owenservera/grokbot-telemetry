# sandbox_telemetry_parse — 2026-11-12 18:51:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2276752 lines=5039
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5030 |
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
| `chromeBrowserPssKb` | {'int': 5030} |
| `chromeGpuPssKb` | {'int': 5030} |
| `chromeOtherPssKb` | {'int': 5030} |
| `chromeProcesses` | {'int': 5030} |
| `chromeProfiles` | {'int': 5030} |
| `chromeRendererMaxPssKb` | {'int': 5030} |
| `chromeRendererPssKb` | {'int': 5030} |
| `chromeRenderers` | {'int': 5030} |
| `chromeTabs` | {'int': 5030} |
| `chromeTabsProbedProfiles` | {'int': 5030} |
| `chromeUtilityPssKb` | {'int': 5030} |
| `desktopPssKb` | {'int': 5030} |
| `hostPssKb` | {'int': 5030} |
| `kind` | {'str': 5030} |
| `memAvailableKb` | {'int': 5030} |
| `memTotalKb` | {'int': 5030} |
| `otherPssKb` | {'int': 5030} |
| `processes` | {'int': 5030} |
| `pssFallbackProcesses` | {'int': 5030} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
