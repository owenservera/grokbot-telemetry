# sandbox_telemetry_parse — 2026-11-11 13:18:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1647590 lines=3649
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3640 |
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
| `chromeBrowserPssKb` | {'int': 3640} |
| `chromeGpuPssKb` | {'int': 3640} |
| `chromeOtherPssKb` | {'int': 3640} |
| `chromeProcesses` | {'int': 3640} |
| `chromeProfiles` | {'int': 3640} |
| `chromeRendererMaxPssKb` | {'int': 3640} |
| `chromeRendererPssKb` | {'int': 3640} |
| `chromeRenderers` | {'int': 3640} |
| `chromeTabs` | {'int': 3640} |
| `chromeTabsProbedProfiles` | {'int': 3640} |
| `chromeUtilityPssKb` | {'int': 3640} |
| `desktopPssKb` | {'int': 3640} |
| `hostPssKb` | {'int': 3640} |
| `kind` | {'str': 3640} |
| `memAvailableKb` | {'int': 3640} |
| `memTotalKb` | {'int': 3640} |
| `otherPssKb` | {'int': 3640} |
| `processes` | {'int': 3640} |
| `pssFallbackProcesses` | {'int': 3640} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
