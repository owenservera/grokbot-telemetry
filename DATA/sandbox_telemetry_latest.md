# sandbox_telemetry_parse — 2026-11-27 08:45:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=330360 lines=737
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 729 |
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
| `chromeBrowserPssKb` | {'int': 729} |
| `chromeGpuPssKb` | {'int': 729} |
| `chromeOtherPssKb` | {'int': 729} |
| `chromeProcesses` | {'int': 729} |
| `chromeProfiles` | {'int': 729} |
| `chromeRendererMaxPssKb` | {'int': 729} |
| `chromeRendererPssKb` | {'int': 729} |
| `chromeRenderers` | {'int': 729} |
| `chromeTabs` | {'int': 729} |
| `chromeTabsProbedProfiles` | {'int': 729} |
| `chromeUtilityPssKb` | {'int': 729} |
| `desktopPssKb` | {'int': 729} |
| `hostPssKb` | {'int': 729} |
| `kind` | {'str': 729} |
| `memAvailableKb` | {'int': 729} |
| `memTotalKb` | {'int': 729} |
| `otherPssKb` | {'int': 729} |
| `processes` | {'int': 729} |
| `pssFallbackProcesses` | {'int': 729} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
