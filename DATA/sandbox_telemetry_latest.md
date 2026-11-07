# sandbox_telemetry_parse — 2026-11-07 16:09:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=531711 lines=1183
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1174 |
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
| `chromeBrowserPssKb` | {'int': 1174} |
| `chromeGpuPssKb` | {'int': 1174} |
| `chromeOtherPssKb` | {'int': 1174} |
| `chromeProcesses` | {'int': 1174} |
| `chromeProfiles` | {'int': 1174} |
| `chromeRendererMaxPssKb` | {'int': 1174} |
| `chromeRendererPssKb` | {'int': 1174} |
| `chromeRenderers` | {'int': 1174} |
| `chromeTabs` | {'int': 1174} |
| `chromeTabsProbedProfiles` | {'int': 1174} |
| `chromeUtilityPssKb` | {'int': 1174} |
| `desktopPssKb` | {'int': 1174} |
| `hostPssKb` | {'int': 1174} |
| `kind` | {'str': 1174} |
| `memAvailableKb` | {'int': 1174} |
| `memTotalKb` | {'int': 1174} |
| `otherPssKb` | {'int': 1174} |
| `processes` | {'int': 1174} |
| `pssFallbackProcesses` | {'int': 1174} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
