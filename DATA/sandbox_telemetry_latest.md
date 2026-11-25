# sandbox_telemetry_parse — 2026-11-25 12:08:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2750654 lines=6094
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6079 |
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
| `chromeBrowserPssKb` | {'int': 6079} |
| `chromeGpuPssKb` | {'int': 6079} |
| `chromeOtherPssKb` | {'int': 6079} |
| `chromeProcesses` | {'int': 6079} |
| `chromeProfiles` | {'int': 6079} |
| `chromeRendererMaxPssKb` | {'int': 6079} |
| `chromeRendererPssKb` | {'int': 6079} |
| `chromeRenderers` | {'int': 6079} |
| `chromeTabs` | {'int': 6079} |
| `chromeTabsProbedProfiles` | {'int': 6079} |
| `chromeUtilityPssKb` | {'int': 6079} |
| `desktopPssKb` | {'int': 6079} |
| `hostPssKb` | {'int': 6079} |
| `kind` | {'str': 6079} |
| `memAvailableKb` | {'int': 6079} |
| `memTotalKb` | {'int': 6079} |
| `otherPssKb` | {'int': 6079} |
| `processes` | {'int': 6079} |
| `pssFallbackProcesses` | {'int': 6079} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
