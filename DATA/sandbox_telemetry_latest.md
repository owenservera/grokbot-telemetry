# sandbox_telemetry_parse — 2026-11-18 08:16:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=742566 lines=1648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1641 |
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
| `chromeBrowserPssKb` | {'int': 1641} |
| `chromeGpuPssKb` | {'int': 1641} |
| `chromeOtherPssKb` | {'int': 1641} |
| `chromeProcesses` | {'int': 1641} |
| `chromeProfiles` | {'int': 1641} |
| `chromeRendererMaxPssKb` | {'int': 1641} |
| `chromeRendererPssKb` | {'int': 1641} |
| `chromeRenderers` | {'int': 1641} |
| `chromeTabs` | {'int': 1641} |
| `chromeTabsProbedProfiles` | {'int': 1641} |
| `chromeUtilityPssKb` | {'int': 1641} |
| `desktopPssKb` | {'int': 1641} |
| `hostPssKb` | {'int': 1641} |
| `kind` | {'str': 1641} |
| `memAvailableKb` | {'int': 1641} |
| `memTotalKb` | {'int': 1641} |
| `otherPssKb` | {'int': 1641} |
| `processes` | {'int': 1641} |
| `pssFallbackProcesses` | {'int': 1641} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
