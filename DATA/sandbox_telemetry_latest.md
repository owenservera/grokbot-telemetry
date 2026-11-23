# sandbox_telemetry_parse — 2026-11-24 00:29:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2056799 lines=4560
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4545 |
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
| `chromeBrowserPssKb` | {'int': 4545} |
| `chromeGpuPssKb` | {'int': 4545} |
| `chromeOtherPssKb` | {'int': 4545} |
| `chromeProcesses` | {'int': 4545} |
| `chromeProfiles` | {'int': 4545} |
| `chromeRendererMaxPssKb` | {'int': 4545} |
| `chromeRendererPssKb` | {'int': 4545} |
| `chromeRenderers` | {'int': 4545} |
| `chromeTabs` | {'int': 4545} |
| `chromeTabsProbedProfiles` | {'int': 4545} |
| `chromeUtilityPssKb` | {'int': 4545} |
| `desktopPssKb` | {'int': 4545} |
| `hostPssKb` | {'int': 4545} |
| `kind` | {'str': 4545} |
| `memAvailableKb` | {'int': 4545} |
| `memTotalKb` | {'int': 4545} |
| `otherPssKb` | {'int': 4545} |
| `processes` | {'int': 4545} |
| `pssFallbackProcesses` | {'int': 4545} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
