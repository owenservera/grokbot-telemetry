# sandbox_telemetry_parse — 2026-11-09 14:18:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=694590 lines=1543
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1534 |
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
| `chromeBrowserPssKb` | {'int': 1534} |
| `chromeGpuPssKb` | {'int': 1534} |
| `chromeOtherPssKb` | {'int': 1534} |
| `chromeProcesses` | {'int': 1534} |
| `chromeProfiles` | {'int': 1534} |
| `chromeRendererMaxPssKb` | {'int': 1534} |
| `chromeRendererPssKb` | {'int': 1534} |
| `chromeRenderers` | {'int': 1534} |
| `chromeTabs` | {'int': 1534} |
| `chromeTabsProbedProfiles` | {'int': 1534} |
| `chromeUtilityPssKb` | {'int': 1534} |
| `desktopPssKb` | {'int': 1534} |
| `hostPssKb` | {'int': 1534} |
| `kind` | {'str': 1534} |
| `memAvailableKb` | {'int': 1534} |
| `memTotalKb` | {'int': 1534} |
| `otherPssKb` | {'int': 1534} |
| `processes` | {'int': 1534} |
| `pssFallbackProcesses` | {'int': 1534} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
