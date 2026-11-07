# sandbox_telemetry_parse — 2026-11-07 08:59:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=386059 lines=861
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 852 |
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
| `chromeBrowserPssKb` | {'int': 852} |
| `chromeGpuPssKb` | {'int': 852} |
| `chromeOtherPssKb` | {'int': 852} |
| `chromeProcesses` | {'int': 852} |
| `chromeProfiles` | {'int': 852} |
| `chromeRendererMaxPssKb` | {'int': 852} |
| `chromeRendererPssKb` | {'int': 852} |
| `chromeRenderers` | {'int': 852} |
| `chromeTabs` | {'int': 852} |
| `chromeTabsProbedProfiles` | {'int': 852} |
| `chromeUtilityPssKb` | {'int': 852} |
| `desktopPssKb` | {'int': 852} |
| `hostPssKb` | {'int': 852} |
| `kind` | {'str': 852} |
| `memAvailableKb` | {'int': 852} |
| `memTotalKb` | {'int': 852} |
| `otherPssKb` | {'int': 852} |
| `processes` | {'int': 852} |
| `pssFallbackProcesses` | {'int': 852} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
