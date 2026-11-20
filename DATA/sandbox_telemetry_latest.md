# sandbox_telemetry_parse — 2026-11-20 13:39:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1738358 lines=3853
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3842 |
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
| `chromeBrowserPssKb` | {'int': 3842} |
| `chromeGpuPssKb` | {'int': 3842} |
| `chromeOtherPssKb` | {'int': 3842} |
| `chromeProcesses` | {'int': 3842} |
| `chromeProfiles` | {'int': 3842} |
| `chromeRendererMaxPssKb` | {'int': 3842} |
| `chromeRendererPssKb` | {'int': 3842} |
| `chromeRenderers` | {'int': 3842} |
| `chromeTabs` | {'int': 3842} |
| `chromeTabsProbedProfiles` | {'int': 3842} |
| `chromeUtilityPssKb` | {'int': 3842} |
| `desktopPssKb` | {'int': 3842} |
| `hostPssKb` | {'int': 3842} |
| `kind` | {'str': 3842} |
| `memAvailableKb` | {'int': 3842} |
| `memTotalKb` | {'int': 3842} |
| `otherPssKb` | {'int': 3842} |
| `processes` | {'int': 3842} |
| `pssFallbackProcesses` | {'int': 3842} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
