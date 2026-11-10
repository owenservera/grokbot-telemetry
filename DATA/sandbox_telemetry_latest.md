# sandbox_telemetry_parse — 2026-11-10 13:01:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1147119 lines=2543
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2534 |
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
| `chromeBrowserPssKb` | {'int': 2534} |
| `chromeGpuPssKb` | {'int': 2534} |
| `chromeOtherPssKb` | {'int': 2534} |
| `chromeProcesses` | {'int': 2534} |
| `chromeProfiles` | {'int': 2534} |
| `chromeRendererMaxPssKb` | {'int': 2534} |
| `chromeRendererPssKb` | {'int': 2534} |
| `chromeRenderers` | {'int': 2534} |
| `chromeTabs` | {'int': 2534} |
| `chromeTabsProbedProfiles` | {'int': 2534} |
| `chromeUtilityPssKb` | {'int': 2534} |
| `desktopPssKb` | {'int': 2534} |
| `hostPssKb` | {'int': 2534} |
| `kind` | {'str': 2534} |
| `memAvailableKb` | {'int': 2534} |
| `memTotalKb` | {'int': 2534} |
| `otherPssKb` | {'int': 2534} |
| `processes` | {'int': 2534} |
| `pssFallbackProcesses` | {'int': 2534} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
