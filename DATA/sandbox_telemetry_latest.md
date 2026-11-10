# sandbox_telemetry_parse — 2026-11-10 12:58:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1145760 lines=2540
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2531 |
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
| `chromeBrowserPssKb` | {'int': 2531} |
| `chromeGpuPssKb` | {'int': 2531} |
| `chromeOtherPssKb` | {'int': 2531} |
| `chromeProcesses` | {'int': 2531} |
| `chromeProfiles` | {'int': 2531} |
| `chromeRendererMaxPssKb` | {'int': 2531} |
| `chromeRendererPssKb` | {'int': 2531} |
| `chromeRenderers` | {'int': 2531} |
| `chromeTabs` | {'int': 2531} |
| `chromeTabsProbedProfiles` | {'int': 2531} |
| `chromeUtilityPssKb` | {'int': 2531} |
| `desktopPssKb` | {'int': 2531} |
| `hostPssKb` | {'int': 2531} |
| `kind` | {'str': 2531} |
| `memAvailableKb` | {'int': 2531} |
| `memTotalKb` | {'int': 2531} |
| `otherPssKb` | {'int': 2531} |
| `processes` | {'int': 2531} |
| `pssFallbackProcesses` | {'int': 2531} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
