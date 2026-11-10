# sandbox_telemetry_parse — 2026-11-10 19:45:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1291106 lines=2861
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2852 |
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
| `chromeBrowserPssKb` | {'int': 2852} |
| `chromeGpuPssKb` | {'int': 2852} |
| `chromeOtherPssKb` | {'int': 2852} |
| `chromeProcesses` | {'int': 2852} |
| `chromeProfiles` | {'int': 2852} |
| `chromeRendererMaxPssKb` | {'int': 2852} |
| `chromeRendererPssKb` | {'int': 2852} |
| `chromeRenderers` | {'int': 2852} |
| `chromeTabs` | {'int': 2852} |
| `chromeTabsProbedProfiles` | {'int': 2852} |
| `chromeUtilityPssKb` | {'int': 2852} |
| `desktopPssKb` | {'int': 2852} |
| `hostPssKb` | {'int': 2852} |
| `kind` | {'str': 2852} |
| `memAvailableKb` | {'int': 2852} |
| `memTotalKb` | {'int': 2852} |
| `otherPssKb` | {'int': 2852} |
| `processes` | {'int': 2852} |
| `pssFallbackProcesses` | {'int': 2852} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
