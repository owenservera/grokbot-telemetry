# sandbox_telemetry_parse — 2026-11-20 06:18:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1599082 lines=3545
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3534 |
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
| `chromeBrowserPssKb` | {'int': 3534} |
| `chromeGpuPssKb` | {'int': 3534} |
| `chromeOtherPssKb` | {'int': 3534} |
| `chromeProcesses` | {'int': 3534} |
| `chromeProfiles` | {'int': 3534} |
| `chromeRendererMaxPssKb` | {'int': 3534} |
| `chromeRendererPssKb` | {'int': 3534} |
| `chromeRenderers` | {'int': 3534} |
| `chromeTabs` | {'int': 3534} |
| `chromeTabsProbedProfiles` | {'int': 3534} |
| `chromeUtilityPssKb` | {'int': 3534} |
| `desktopPssKb` | {'int': 3534} |
| `hostPssKb` | {'int': 3534} |
| `kind` | {'str': 3534} |
| `memAvailableKb` | {'int': 3534} |
| `memTotalKb` | {'int': 3534} |
| `otherPssKb` | {'int': 3534} |
| `processes` | {'int': 3534} |
| `pssFallbackProcesses` | {'int': 3534} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
