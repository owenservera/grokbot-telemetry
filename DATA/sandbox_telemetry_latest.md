# sandbox_telemetry_parse — 2026-11-09 22:16:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=862990 lines=1915
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1906 |
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
| `chromeBrowserPssKb` | {'int': 1906} |
| `chromeGpuPssKb` | {'int': 1906} |
| `chromeOtherPssKb` | {'int': 1906} |
| `chromeProcesses` | {'int': 1906} |
| `chromeProfiles` | {'int': 1906} |
| `chromeRendererMaxPssKb` | {'int': 1906} |
| `chromeRendererPssKb` | {'int': 1906} |
| `chromeRenderers` | {'int': 1906} |
| `chromeTabs` | {'int': 1906} |
| `chromeTabsProbedProfiles` | {'int': 1906} |
| `chromeUtilityPssKb` | {'int': 1906} |
| `desktopPssKb` | {'int': 1906} |
| `hostPssKb` | {'int': 1906} |
| `kind` | {'str': 1906} |
| `memAvailableKb` | {'int': 1906} |
| `memTotalKb` | {'int': 1906} |
| `otherPssKb` | {'int': 1906} |
| `processes` | {'int': 1906} |
| `pssFallbackProcesses` | {'int': 1906} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
