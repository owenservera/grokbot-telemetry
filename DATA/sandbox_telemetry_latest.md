# sandbox_telemetry_parse — 2026-11-25 02:19:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2549860 lines=5650
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5635 |
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
| `chromeBrowserPssKb` | {'int': 5635} |
| `chromeGpuPssKb` | {'int': 5635} |
| `chromeOtherPssKb` | {'int': 5635} |
| `chromeProcesses` | {'int': 5635} |
| `chromeProfiles` | {'int': 5635} |
| `chromeRendererMaxPssKb` | {'int': 5635} |
| `chromeRendererPssKb` | {'int': 5635} |
| `chromeRenderers` | {'int': 5635} |
| `chromeTabs` | {'int': 5635} |
| `chromeTabsProbedProfiles` | {'int': 5635} |
| `chromeUtilityPssKb` | {'int': 5635} |
| `desktopPssKb` | {'int': 5635} |
| `hostPssKb` | {'int': 5635} |
| `kind` | {'str': 5635} |
| `memAvailableKb` | {'int': 5635} |
| `memTotalKb` | {'int': 5635} |
| `otherPssKb` | {'int': 5635} |
| `processes` | {'int': 5635} |
| `pssFallbackProcesses` | {'int': 5635} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
