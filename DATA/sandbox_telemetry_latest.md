# sandbox_telemetry_parse — 2026-11-07 12:22:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=459355 lines=1023
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1014 |
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
| `chromeBrowserPssKb` | {'int': 1014} |
| `chromeGpuPssKb` | {'int': 1014} |
| `chromeOtherPssKb` | {'int': 1014} |
| `chromeProcesses` | {'int': 1014} |
| `chromeProfiles` | {'int': 1014} |
| `chromeRendererMaxPssKb` | {'int': 1014} |
| `chromeRendererPssKb` | {'int': 1014} |
| `chromeRenderers` | {'int': 1014} |
| `chromeTabs` | {'int': 1014} |
| `chromeTabsProbedProfiles` | {'int': 1014} |
| `chromeUtilityPssKb` | {'int': 1014} |
| `desktopPssKb` | {'int': 1014} |
| `hostPssKb` | {'int': 1014} |
| `kind` | {'str': 1014} |
| `memAvailableKb` | {'int': 1014} |
| `memTotalKb` | {'int': 1014} |
| `otherPssKb` | {'int': 1014} |
| `processes` | {'int': 1014} |
| `pssFallbackProcesses` | {'int': 1014} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
