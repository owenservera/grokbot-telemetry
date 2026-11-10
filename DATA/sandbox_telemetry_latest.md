# sandbox_telemetry_parse — 2026-11-10 15:04:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1191034 lines=2640
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2631 |
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
| `chromeBrowserPssKb` | {'int': 2631} |
| `chromeGpuPssKb` | {'int': 2631} |
| `chromeOtherPssKb` | {'int': 2631} |
| `chromeProcesses` | {'int': 2631} |
| `chromeProfiles` | {'int': 2631} |
| `chromeRendererMaxPssKb` | {'int': 2631} |
| `chromeRendererPssKb` | {'int': 2631} |
| `chromeRenderers` | {'int': 2631} |
| `chromeTabs` | {'int': 2631} |
| `chromeTabsProbedProfiles` | {'int': 2631} |
| `chromeUtilityPssKb` | {'int': 2631} |
| `desktopPssKb` | {'int': 2631} |
| `hostPssKb` | {'int': 2631} |
| `kind` | {'str': 2631} |
| `memAvailableKb` | {'int': 2631} |
| `memTotalKb` | {'int': 2631} |
| `otherPssKb` | {'int': 2631} |
| `processes` | {'int': 2631} |
| `pssFallbackProcesses` | {'int': 2631} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
