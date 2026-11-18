# sandbox_telemetry_parse — 2026-11-18 06:25:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=714542 lines=1586
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1579 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1579} |
| `chromeGpuPssKb` | {'int': 1579} |
| `chromeOtherPssKb` | {'int': 1579} |
| `chromeProcesses` | {'int': 1579} |
| `chromeProfiles` | {'int': 1579} |
| `chromeRendererMaxPssKb` | {'int': 1579} |
| `chromeRendererPssKb` | {'int': 1579} |
| `chromeRenderers` | {'int': 1579} |
| `chromeTabs` | {'int': 1579} |
| `chromeTabsProbedProfiles` | {'int': 1579} |
| `chromeUtilityPssKb` | {'int': 1579} |
| `desktopPssKb` | {'int': 1579} |
| `hostPssKb` | {'int': 1579} |
| `kind` | {'str': 1579} |
| `memAvailableKb` | {'int': 1579} |
| `memTotalKb` | {'int': 1579} |
| `otherPssKb` | {'int': 1579} |
| `processes` | {'int': 1579} |
| `pssFallbackProcesses` | {'int': 1579} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
