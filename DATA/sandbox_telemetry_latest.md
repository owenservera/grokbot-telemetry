# sandbox_telemetry_parse — 2026-11-23 15:02:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1883450 lines=4177
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4162 |
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
| `chromeBrowserPssKb` | {'int': 4162} |
| `chromeGpuPssKb` | {'int': 4162} |
| `chromeOtherPssKb` | {'int': 4162} |
| `chromeProcesses` | {'int': 4162} |
| `chromeProfiles` | {'int': 4162} |
| `chromeRendererMaxPssKb` | {'int': 4162} |
| `chromeRendererPssKb` | {'int': 4162} |
| `chromeRenderers` | {'int': 4162} |
| `chromeTabs` | {'int': 4162} |
| `chromeTabsProbedProfiles` | {'int': 4162} |
| `chromeUtilityPssKb` | {'int': 4162} |
| `desktopPssKb` | {'int': 4162} |
| `hostPssKb` | {'int': 4162} |
| `kind` | {'str': 4162} |
| `memAvailableKb` | {'int': 4162} |
| `memTotalKb` | {'int': 4162} |
| `otherPssKb` | {'int': 4162} |
| `processes` | {'int': 4162} |
| `pssFallbackProcesses` | {'int': 4162} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
