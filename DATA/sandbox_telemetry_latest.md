# sandbox_telemetry_parse — 2026-11-25 13:22:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2772807 lines=6143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6128 |
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
| `chromeBrowserPssKb` | {'int': 6128} |
| `chromeGpuPssKb` | {'int': 6128} |
| `chromeOtherPssKb` | {'int': 6128} |
| `chromeProcesses` | {'int': 6128} |
| `chromeProfiles` | {'int': 6128} |
| `chromeRendererMaxPssKb` | {'int': 6128} |
| `chromeRendererPssKb` | {'int': 6128} |
| `chromeRenderers` | {'int': 6128} |
| `chromeTabs` | {'int': 6128} |
| `chromeTabsProbedProfiles` | {'int': 6128} |
| `chromeUtilityPssKb` | {'int': 6128} |
| `desktopPssKb` | {'int': 6128} |
| `hostPssKb` | {'int': 6128} |
| `kind` | {'str': 6128} |
| `memAvailableKb` | {'int': 6128} |
| `memTotalKb` | {'int': 6128} |
| `otherPssKb` | {'int': 6128} |
| `processes` | {'int': 6128} |
| `pssFallbackProcesses` | {'int': 6128} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
