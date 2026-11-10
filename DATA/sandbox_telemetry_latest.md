# sandbox_telemetry_parse — 2026-11-10 14:52:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1187418 lines=2632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2623 |
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
| `chromeBrowserPssKb` | {'int': 2623} |
| `chromeGpuPssKb` | {'int': 2623} |
| `chromeOtherPssKb` | {'int': 2623} |
| `chromeProcesses` | {'int': 2623} |
| `chromeProfiles` | {'int': 2623} |
| `chromeRendererMaxPssKb` | {'int': 2623} |
| `chromeRendererPssKb` | {'int': 2623} |
| `chromeRenderers` | {'int': 2623} |
| `chromeTabs` | {'int': 2623} |
| `chromeTabsProbedProfiles` | {'int': 2623} |
| `chromeUtilityPssKb` | {'int': 2623} |
| `desktopPssKb` | {'int': 2623} |
| `hostPssKb` | {'int': 2623} |
| `kind` | {'str': 2623} |
| `memAvailableKb` | {'int': 2623} |
| `memTotalKb` | {'int': 2623} |
| `otherPssKb` | {'int': 2623} |
| `processes` | {'int': 2623} |
| `pssFallbackProcesses` | {'int': 2623} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
