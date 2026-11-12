# sandbox_telemetry_parse — 2026-11-12 17:47:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2251384 lines=4983
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4974 |
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
| `chromeBrowserPssKb` | {'int': 4974} |
| `chromeGpuPssKb` | {'int': 4974} |
| `chromeOtherPssKb` | {'int': 4974} |
| `chromeProcesses` | {'int': 4974} |
| `chromeProfiles` | {'int': 4974} |
| `chromeRendererMaxPssKb` | {'int': 4974} |
| `chromeRendererPssKb` | {'int': 4974} |
| `chromeRenderers` | {'int': 4974} |
| `chromeTabs` | {'int': 4974} |
| `chromeTabsProbedProfiles` | {'int': 4974} |
| `chromeUtilityPssKb` | {'int': 4974} |
| `desktopPssKb` | {'int': 4974} |
| `hostPssKb` | {'int': 4974} |
| `kind` | {'str': 4974} |
| `memAvailableKb` | {'int': 4974} |
| `memTotalKb` | {'int': 4974} |
| `otherPssKb` | {'int': 4974} |
| `processes` | {'int': 4974} |
| `pssFallbackProcesses` | {'int': 4974} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
