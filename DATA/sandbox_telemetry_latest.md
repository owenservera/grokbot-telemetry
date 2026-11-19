# sandbox_telemetry_parse — 2026-11-19 23:43:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1491494 lines=3307
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3296 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3296} |
| `chromeGpuPssKb` | {'int': 3296} |
| `chromeOtherPssKb` | {'int': 3296} |
| `chromeProcesses` | {'int': 3296} |
| `chromeProfiles` | {'int': 3296} |
| `chromeRendererMaxPssKb` | {'int': 3296} |
| `chromeRendererPssKb` | {'int': 3296} |
| `chromeRenderers` | {'int': 3296} |
| `chromeTabs` | {'int': 3296} |
| `chromeTabsProbedProfiles` | {'int': 3296} |
| `chromeUtilityPssKb` | {'int': 3296} |
| `desktopPssKb` | {'int': 3296} |
| `hostPssKb` | {'int': 3296} |
| `kind` | {'str': 3296} |
| `memAvailableKb` | {'int': 3296} |
| `memTotalKb` | {'int': 3296} |
| `otherPssKb` | {'int': 3296} |
| `processes` | {'int': 3296} |
| `pssFallbackProcesses` | {'int': 3296} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
