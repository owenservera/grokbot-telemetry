# sandbox_telemetry_parse — 2026-11-07 08:05:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=372498 lines=831
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 822 |
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
| `chromeBrowserPssKb` | {'int': 822} |
| `chromeGpuPssKb` | {'int': 822} |
| `chromeOtherPssKb` | {'int': 822} |
| `chromeProcesses` | {'int': 822} |
| `chromeProfiles` | {'int': 822} |
| `chromeRendererMaxPssKb` | {'int': 822} |
| `chromeRendererPssKb` | {'int': 822} |
| `chromeRenderers` | {'int': 822} |
| `chromeTabs` | {'int': 822} |
| `chromeTabsProbedProfiles` | {'int': 822} |
| `chromeUtilityPssKb` | {'int': 822} |
| `desktopPssKb` | {'int': 822} |
| `hostPssKb` | {'int': 822} |
| `kind` | {'str': 822} |
| `memAvailableKb` | {'int': 822} |
| `memTotalKb` | {'int': 822} |
| `otherPssKb` | {'int': 822} |
| `processes` | {'int': 822} |
| `pssFallbackProcesses` | {'int': 822} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
