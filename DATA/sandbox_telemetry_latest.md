# sandbox_telemetry_parse — 2026-11-27 19:21:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=558003 lines=1240
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1232 |
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
| `chromeBrowserPssKb` | {'int': 1232} |
| `chromeGpuPssKb` | {'int': 1232} |
| `chromeOtherPssKb` | {'int': 1232} |
| `chromeProcesses` | {'int': 1232} |
| `chromeProfiles` | {'int': 1232} |
| `chromeRendererMaxPssKb` | {'int': 1232} |
| `chromeRendererPssKb` | {'int': 1232} |
| `chromeRenderers` | {'int': 1232} |
| `chromeTabs` | {'int': 1232} |
| `chromeTabsProbedProfiles` | {'int': 1232} |
| `chromeUtilityPssKb` | {'int': 1232} |
| `desktopPssKb` | {'int': 1232} |
| `hostPssKb` | {'int': 1232} |
| `kind` | {'str': 1232} |
| `memAvailableKb` | {'int': 1232} |
| `memTotalKb` | {'int': 1232} |
| `otherPssKb` | {'int': 1232} |
| `processes` | {'int': 1232} |
| `pssFallbackProcesses` | {'int': 1232} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
