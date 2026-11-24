# sandbox_telemetry_parse — 2026-11-24 07:45:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2192001 lines=4859
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4844 |
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
| `chromeBrowserPssKb` | {'int': 4844} |
| `chromeGpuPssKb` | {'int': 4844} |
| `chromeOtherPssKb` | {'int': 4844} |
| `chromeProcesses` | {'int': 4844} |
| `chromeProfiles` | {'int': 4844} |
| `chromeRendererMaxPssKb` | {'int': 4844} |
| `chromeRendererPssKb` | {'int': 4844} |
| `chromeRenderers` | {'int': 4844} |
| `chromeTabs` | {'int': 4844} |
| `chromeTabsProbedProfiles` | {'int': 4844} |
| `chromeUtilityPssKb` | {'int': 4844} |
| `desktopPssKb` | {'int': 4844} |
| `hostPssKb` | {'int': 4844} |
| `kind` | {'str': 4844} |
| `memAvailableKb` | {'int': 4844} |
| `memTotalKb` | {'int': 4844} |
| `otherPssKb` | {'int': 4844} |
| `processes` | {'int': 4844} |
| `pssFallbackProcesses` | {'int': 4844} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
