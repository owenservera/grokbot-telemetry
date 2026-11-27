# sandbox_telemetry_parse — 2026-11-27 13:26:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=434853 lines=968
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 960 |
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
| `chromeBrowserPssKb` | {'int': 960} |
| `chromeGpuPssKb` | {'int': 960} |
| `chromeOtherPssKb` | {'int': 960} |
| `chromeProcesses` | {'int': 960} |
| `chromeProfiles` | {'int': 960} |
| `chromeRendererMaxPssKb` | {'int': 960} |
| `chromeRendererPssKb` | {'int': 960} |
| `chromeRenderers` | {'int': 960} |
| `chromeTabs` | {'int': 960} |
| `chromeTabsProbedProfiles` | {'int': 960} |
| `chromeUtilityPssKb` | {'int': 960} |
| `desktopPssKb` | {'int': 960} |
| `hostPssKb` | {'int': 960} |
| `kind` | {'str': 960} |
| `memAvailableKb` | {'int': 960} |
| `memTotalKb` | {'int': 960} |
| `otherPssKb` | {'int': 960} |
| `processes` | {'int': 960} |
| `pssFallbackProcesses` | {'int': 960} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
