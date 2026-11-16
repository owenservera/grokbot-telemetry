# sandbox_telemetry_parse — 2026-11-17 00:32:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=181004 lines=406
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 399 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 399} |
| `chromeGpuPssKb` | {'int': 399} |
| `chromeOtherPssKb` | {'int': 399} |
| `chromeProcesses` | {'int': 399} |
| `chromeProfiles` | {'int': 399} |
| `chromeRendererMaxPssKb` | {'int': 399} |
| `chromeRendererPssKb` | {'int': 399} |
| `chromeRenderers` | {'int': 399} |
| `chromeTabs` | {'int': 399} |
| `chromeTabsProbedProfiles` | {'int': 399} |
| `chromeUtilityPssKb` | {'int': 399} |
| `desktopPssKb` | {'int': 399} |
| `hostPssKb` | {'int': 399} |
| `kind` | {'str': 399} |
| `memAvailableKb` | {'int': 399} |
| `memTotalKb` | {'int': 399} |
| `otherPssKb` | {'int': 399} |
| `processes` | {'int': 399} |
| `pssFallbackProcesses` | {'int': 399} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
