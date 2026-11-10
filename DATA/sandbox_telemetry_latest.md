# sandbox_telemetry_parse — 2026-11-10 17:32:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1243564 lines=2756
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2747 |
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
| `chromeBrowserPssKb` | {'int': 2747} |
| `chromeGpuPssKb` | {'int': 2747} |
| `chromeOtherPssKb` | {'int': 2747} |
| `chromeProcesses` | {'int': 2747} |
| `chromeProfiles` | {'int': 2747} |
| `chromeRendererMaxPssKb` | {'int': 2747} |
| `chromeRendererPssKb` | {'int': 2747} |
| `chromeRenderers` | {'int': 2747} |
| `chromeTabs` | {'int': 2747} |
| `chromeTabsProbedProfiles` | {'int': 2747} |
| `chromeUtilityPssKb` | {'int': 2747} |
| `desktopPssKb` | {'int': 2747} |
| `hostPssKb` | {'int': 2747} |
| `kind` | {'str': 2747} |
| `memAvailableKb` | {'int': 2747} |
| `memTotalKb` | {'int': 2747} |
| `otherPssKb` | {'int': 2747} |
| `processes` | {'int': 2747} |
| `pssFallbackProcesses` | {'int': 2747} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
