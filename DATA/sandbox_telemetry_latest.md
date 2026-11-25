# sandbox_telemetry_parse — 2026-11-25 22:44:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2956395 lines=6549
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6534 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6534} |
| `chromeGpuPssKb` | {'int': 6534} |
| `chromeOtherPssKb` | {'int': 6534} |
| `chromeProcesses` | {'int': 6534} |
| `chromeProfiles` | {'int': 6534} |
| `chromeRendererMaxPssKb` | {'int': 6534} |
| `chromeRendererPssKb` | {'int': 6534} |
| `chromeRenderers` | {'int': 6534} |
| `chromeTabs` | {'int': 6534} |
| `chromeTabsProbedProfiles` | {'int': 6534} |
| `chromeUtilityPssKb` | {'int': 6534} |
| `desktopPssKb` | {'int': 6534} |
| `hostPssKb` | {'int': 6534} |
| `kind` | {'str': 6534} |
| `memAvailableKb` | {'int': 6534} |
| `memTotalKb` | {'int': 6534} |
| `otherPssKb` | {'int': 6534} |
| `processes` | {'int': 6534} |
| `pssFallbackProcesses` | {'int': 6534} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
