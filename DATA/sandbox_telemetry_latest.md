# sandbox_telemetry_parse — 2026-11-23 15:03:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1883903 lines=4178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4163 |
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
| `chromeBrowserPssKb` | {'int': 4163} |
| `chromeGpuPssKb` | {'int': 4163} |
| `chromeOtherPssKb` | {'int': 4163} |
| `chromeProcesses` | {'int': 4163} |
| `chromeProfiles` | {'int': 4163} |
| `chromeRendererMaxPssKb` | {'int': 4163} |
| `chromeRendererPssKb` | {'int': 4163} |
| `chromeRenderers` | {'int': 4163} |
| `chromeTabs` | {'int': 4163} |
| `chromeTabsProbedProfiles` | {'int': 4163} |
| `chromeUtilityPssKb` | {'int': 4163} |
| `desktopPssKb` | {'int': 4163} |
| `hostPssKb` | {'int': 4163} |
| `kind` | {'str': 4163} |
| `memAvailableKb` | {'int': 4163} |
| `memTotalKb` | {'int': 4163} |
| `otherPssKb` | {'int': 4163} |
| `processes` | {'int': 4163} |
| `pssFallbackProcesses` | {'int': 4163} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
