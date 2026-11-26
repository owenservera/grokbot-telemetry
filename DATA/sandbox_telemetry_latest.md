# sandbox_telemetry_parse — 2026-11-26 21:59:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=103283 lines=235
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 227 |
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
| `chromeBrowserPssKb` | {'int': 227} |
| `chromeGpuPssKb` | {'int': 227} |
| `chromeOtherPssKb` | {'int': 227} |
| `chromeProcesses` | {'int': 227} |
| `chromeProfiles` | {'int': 227} |
| `chromeRendererMaxPssKb` | {'int': 227} |
| `chromeRendererPssKb` | {'int': 227} |
| `chromeRenderers` | {'int': 227} |
| `chromeTabs` | {'int': 227} |
| `chromeTabsProbedProfiles` | {'int': 227} |
| `chromeUtilityPssKb` | {'int': 227} |
| `desktopPssKb` | {'int': 227} |
| `hostPssKb` | {'int': 227} |
| `kind` | {'str': 227} |
| `memAvailableKb` | {'int': 227} |
| `memTotalKb` | {'int': 227} |
| `otherPssKb` | {'int': 227} |
| `processes` | {'int': 227} |
| `pssFallbackProcesses` | {'int': 227} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
