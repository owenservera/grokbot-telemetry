# sandbox_telemetry_parse — 2026-11-10 17:37:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1246282 lines=2762
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2753 |
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
| `chromeBrowserPssKb` | {'int': 2753} |
| `chromeGpuPssKb` | {'int': 2753} |
| `chromeOtherPssKb` | {'int': 2753} |
| `chromeProcesses` | {'int': 2753} |
| `chromeProfiles` | {'int': 2753} |
| `chromeRendererMaxPssKb` | {'int': 2753} |
| `chromeRendererPssKb` | {'int': 2753} |
| `chromeRenderers` | {'int': 2753} |
| `chromeTabs` | {'int': 2753} |
| `chromeTabsProbedProfiles` | {'int': 2753} |
| `chromeUtilityPssKb` | {'int': 2753} |
| `desktopPssKb` | {'int': 2753} |
| `hostPssKb` | {'int': 2753} |
| `kind` | {'str': 2753} |
| `memAvailableKb` | {'int': 2753} |
| `memTotalKb` | {'int': 2753} |
| `otherPssKb` | {'int': 2753} |
| `processes` | {'int': 2753} |
| `pssFallbackProcesses` | {'int': 2753} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
