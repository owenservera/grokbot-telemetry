# sandbox_telemetry_parse — 2026-11-12 01:37:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1913266 lines=4236
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4227 |
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
| `chromeBrowserPssKb` | {'int': 4227} |
| `chromeGpuPssKb` | {'int': 4227} |
| `chromeOtherPssKb` | {'int': 4227} |
| `chromeProcesses` | {'int': 4227} |
| `chromeProfiles` | {'int': 4227} |
| `chromeRendererMaxPssKb` | {'int': 4227} |
| `chromeRendererPssKb` | {'int': 4227} |
| `chromeRenderers` | {'int': 4227} |
| `chromeTabs` | {'int': 4227} |
| `chromeTabsProbedProfiles` | {'int': 4227} |
| `chromeUtilityPssKb` | {'int': 4227} |
| `desktopPssKb` | {'int': 4227} |
| `hostPssKb` | {'int': 4227} |
| `kind` | {'str': 4227} |
| `memAvailableKb` | {'int': 4227} |
| `memTotalKb` | {'int': 4227} |
| `otherPssKb` | {'int': 4227} |
| `processes` | {'int': 4227} |
| `pssFallbackProcesses` | {'int': 4227} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
