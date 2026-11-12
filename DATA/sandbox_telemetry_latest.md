# sandbox_telemetry_parse — 2026-11-12 13:45:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2155801 lines=4772
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4763 |
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
| `chromeBrowserPssKb` | {'int': 4763} |
| `chromeGpuPssKb` | {'int': 4763} |
| `chromeOtherPssKb` | {'int': 4763} |
| `chromeProcesses` | {'int': 4763} |
| `chromeProfiles` | {'int': 4763} |
| `chromeRendererMaxPssKb` | {'int': 4763} |
| `chromeRendererPssKb` | {'int': 4763} |
| `chromeRenderers` | {'int': 4763} |
| `chromeTabs` | {'int': 4763} |
| `chromeTabsProbedProfiles` | {'int': 4763} |
| `chromeUtilityPssKb` | {'int': 4763} |
| `desktopPssKb` | {'int': 4763} |
| `hostPssKb` | {'int': 4763} |
| `kind` | {'str': 4763} |
| `memAvailableKb` | {'int': 4763} |
| `memTotalKb` | {'int': 4763} |
| `otherPssKb` | {'int': 4763} |
| `processes` | {'int': 4763} |
| `pssFallbackProcesses` | {'int': 4763} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
