# sandbox_telemetry_parse — 2026-11-12 12:19:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2125471 lines=4705
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4696 |
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
| `chromeBrowserPssKb` | {'int': 4696} |
| `chromeGpuPssKb` | {'int': 4696} |
| `chromeOtherPssKb` | {'int': 4696} |
| `chromeProcesses` | {'int': 4696} |
| `chromeProfiles` | {'int': 4696} |
| `chromeRendererMaxPssKb` | {'int': 4696} |
| `chromeRendererPssKb` | {'int': 4696} |
| `chromeRenderers` | {'int': 4696} |
| `chromeTabs` | {'int': 4696} |
| `chromeTabsProbedProfiles` | {'int': 4696} |
| `chromeUtilityPssKb` | {'int': 4696} |
| `desktopPssKb` | {'int': 4696} |
| `hostPssKb` | {'int': 4696} |
| `kind` | {'str': 4696} |
| `memAvailableKb` | {'int': 4696} |
| `memTotalKb` | {'int': 4696} |
| `otherPssKb` | {'int': 4696} |
| `processes` | {'int': 4696} |
| `pssFallbackProcesses` | {'int': 4696} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
