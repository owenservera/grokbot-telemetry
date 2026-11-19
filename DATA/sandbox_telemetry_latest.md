# sandbox_telemetry_parse — 2026-11-19 18:06:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1384745 lines=3071
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3060 |
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
| `chromeBrowserPssKb` | {'int': 3060} |
| `chromeGpuPssKb` | {'int': 3060} |
| `chromeOtherPssKb` | {'int': 3060} |
| `chromeProcesses` | {'int': 3060} |
| `chromeProfiles` | {'int': 3060} |
| `chromeRendererMaxPssKb` | {'int': 3060} |
| `chromeRendererPssKb` | {'int': 3060} |
| `chromeRenderers` | {'int': 3060} |
| `chromeTabs` | {'int': 3060} |
| `chromeTabsProbedProfiles` | {'int': 3060} |
| `chromeUtilityPssKb` | {'int': 3060} |
| `desktopPssKb` | {'int': 3060} |
| `hostPssKb` | {'int': 3060} |
| `kind` | {'str': 3060} |
| `memAvailableKb` | {'int': 3060} |
| `memTotalKb` | {'int': 3060} |
| `otherPssKb` | {'int': 3060} |
| `processes` | {'int': 3060} |
| `pssFallbackProcesses` | {'int': 3060} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
