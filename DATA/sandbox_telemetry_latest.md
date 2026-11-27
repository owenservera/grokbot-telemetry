# sandbox_telemetry_parse — 2026-11-27 09:30:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=346180 lines=772
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 764 |
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
| `chromeBrowserPssKb` | {'int': 764} |
| `chromeGpuPssKb` | {'int': 764} |
| `chromeOtherPssKb` | {'int': 764} |
| `chromeProcesses` | {'int': 764} |
| `chromeProfiles` | {'int': 764} |
| `chromeRendererMaxPssKb` | {'int': 764} |
| `chromeRendererPssKb` | {'int': 764} |
| `chromeRenderers` | {'int': 764} |
| `chromeTabs` | {'int': 764} |
| `chromeTabsProbedProfiles` | {'int': 764} |
| `chromeUtilityPssKb` | {'int': 764} |
| `desktopPssKb` | {'int': 764} |
| `hostPssKb` | {'int': 764} |
| `kind` | {'str': 764} |
| `memAvailableKb` | {'int': 764} |
| `memTotalKb` | {'int': 764} |
| `otherPssKb` | {'int': 764} |
| `processes` | {'int': 764} |
| `pssFallbackProcesses` | {'int': 764} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
