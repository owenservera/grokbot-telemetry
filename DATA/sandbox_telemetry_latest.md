# sandbox_telemetry_parse — 2026-11-06 22:00:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=185745 lines=418
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 409 |
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
| `chromeBrowserPssKb` | {'int': 409} |
| `chromeGpuPssKb` | {'int': 409} |
| `chromeOtherPssKb` | {'int': 409} |
| `chromeProcesses` | {'int': 409} |
| `chromeProfiles` | {'int': 409} |
| `chromeRendererMaxPssKb` | {'int': 409} |
| `chromeRendererPssKb` | {'int': 409} |
| `chromeRenderers` | {'int': 409} |
| `chromeTabs` | {'int': 409} |
| `chromeTabsProbedProfiles` | {'int': 409} |
| `chromeUtilityPssKb` | {'int': 409} |
| `desktopPssKb` | {'int': 409} |
| `hostPssKb` | {'int': 409} |
| `kind` | {'str': 409} |
| `memAvailableKb` | {'int': 409} |
| `memTotalKb` | {'int': 409} |
| `otherPssKb` | {'int': 409} |
| `processes` | {'int': 409} |
| `pssFallbackProcesses` | {'int': 409} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
