# sandbox_telemetry_parse — 2026-11-27 23:29:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=635822 lines=1412
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1404 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1404} |
| `chromeGpuPssKb` | {'int': 1404} |
| `chromeOtherPssKb` | {'int': 1404} |
| `chromeProcesses` | {'int': 1404} |
| `chromeProfiles` | {'int': 1404} |
| `chromeRendererMaxPssKb` | {'int': 1404} |
| `chromeRendererPssKb` | {'int': 1404} |
| `chromeRenderers` | {'int': 1404} |
| `chromeTabs` | {'int': 1404} |
| `chromeTabsProbedProfiles` | {'int': 1404} |
| `chromeUtilityPssKb` | {'int': 1404} |
| `desktopPssKb` | {'int': 1404} |
| `hostPssKb` | {'int': 1404} |
| `kind` | {'str': 1404} |
| `memAvailableKb` | {'int': 1404} |
| `memTotalKb` | {'int': 1404} |
| `otherPssKb` | {'int': 1404} |
| `processes` | {'int': 1404} |
| `pssFallbackProcesses` | {'int': 1404} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
