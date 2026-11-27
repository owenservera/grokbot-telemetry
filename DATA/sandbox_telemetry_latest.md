# sandbox_telemetry_parse — 2026-11-27 09:04:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=337140 lines=752
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 744 |
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
| `chromeBrowserPssKb` | {'int': 744} |
| `chromeGpuPssKb` | {'int': 744} |
| `chromeOtherPssKb` | {'int': 744} |
| `chromeProcesses` | {'int': 744} |
| `chromeProfiles` | {'int': 744} |
| `chromeRendererMaxPssKb` | {'int': 744} |
| `chromeRendererPssKb` | {'int': 744} |
| `chromeRenderers` | {'int': 744} |
| `chromeTabs` | {'int': 744} |
| `chromeTabsProbedProfiles` | {'int': 744} |
| `chromeUtilityPssKb` | {'int': 744} |
| `desktopPssKb` | {'int': 744} |
| `hostPssKb` | {'int': 744} |
| `kind` | {'str': 744} |
| `memAvailableKb` | {'int': 744} |
| `memTotalKb` | {'int': 744} |
| `otherPssKb` | {'int': 744} |
| `processes` | {'int': 744} |
| `pssFallbackProcesses` | {'int': 744} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
