# sandbox_telemetry_parse — 2026-11-24 21:58:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2467117 lines=5467
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5452 |
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
| `chromeBrowserPssKb` | {'int': 5452} |
| `chromeGpuPssKb` | {'int': 5452} |
| `chromeOtherPssKb` | {'int': 5452} |
| `chromeProcesses` | {'int': 5452} |
| `chromeProfiles` | {'int': 5452} |
| `chromeRendererMaxPssKb` | {'int': 5452} |
| `chromeRendererPssKb` | {'int': 5452} |
| `chromeRenderers` | {'int': 5452} |
| `chromeTabs` | {'int': 5452} |
| `chromeTabsProbedProfiles` | {'int': 5452} |
| `chromeUtilityPssKb` | {'int': 5452} |
| `desktopPssKb` | {'int': 5452} |
| `hostPssKb` | {'int': 5452} |
| `kind` | {'str': 5452} |
| `memAvailableKb` | {'int': 5452} |
| `memTotalKb` | {'int': 5452} |
| `otherPssKb` | {'int': 5452} |
| `processes` | {'int': 5452} |
| `pssFallbackProcesses` | {'int': 5452} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
