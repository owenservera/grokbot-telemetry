# sandbox_telemetry_parse — 2026-11-20 16:15:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1793105 lines=3974
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3963 |
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
| `chromeBrowserPssKb` | {'int': 3963} |
| `chromeGpuPssKb` | {'int': 3963} |
| `chromeOtherPssKb` | {'int': 3963} |
| `chromeProcesses` | {'int': 3963} |
| `chromeProfiles` | {'int': 3963} |
| `chromeRendererMaxPssKb` | {'int': 3963} |
| `chromeRendererPssKb` | {'int': 3963} |
| `chromeRenderers` | {'int': 3963} |
| `chromeTabs` | {'int': 3963} |
| `chromeTabsProbedProfiles` | {'int': 3963} |
| `chromeUtilityPssKb` | {'int': 3963} |
| `desktopPssKb` | {'int': 3963} |
| `hostPssKb` | {'int': 3963} |
| `kind` | {'str': 3963} |
| `memAvailableKb` | {'int': 3963} |
| `memTotalKb` | {'int': 3963} |
| `otherPssKb` | {'int': 3963} |
| `processes` | {'int': 3963} |
| `pssFallbackProcesses` | {'int': 3963} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
