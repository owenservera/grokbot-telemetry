# sandbox_telemetry_parse — 2026-11-19 15:27:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1330701 lines=2950
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2941 |
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
| `chromeBrowserPssKb` | {'int': 2941} |
| `chromeGpuPssKb` | {'int': 2941} |
| `chromeOtherPssKb` | {'int': 2941} |
| `chromeProcesses` | {'int': 2941} |
| `chromeProfiles` | {'int': 2941} |
| `chromeRendererMaxPssKb` | {'int': 2941} |
| `chromeRendererPssKb` | {'int': 2941} |
| `chromeRenderers` | {'int': 2941} |
| `chromeTabs` | {'int': 2941} |
| `chromeTabsProbedProfiles` | {'int': 2941} |
| `chromeUtilityPssKb` | {'int': 2941} |
| `desktopPssKb` | {'int': 2941} |
| `hostPssKb` | {'int': 2941} |
| `kind` | {'str': 2941} |
| `memAvailableKb` | {'int': 2941} |
| `memTotalKb` | {'int': 2941} |
| `otherPssKb` | {'int': 2941} |
| `processes` | {'int': 2941} |
| `pssFallbackProcesses` | {'int': 2941} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
