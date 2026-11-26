# sandbox_telemetry_parse — 2026-11-26 06:44:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3124683 lines=6921
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6906 |
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
| `chromeBrowserPssKb` | {'int': 6906} |
| `chromeGpuPssKb` | {'int': 6906} |
| `chromeOtherPssKb` | {'int': 6906} |
| `chromeProcesses` | {'int': 6906} |
| `chromeProfiles` | {'int': 6906} |
| `chromeRendererMaxPssKb` | {'int': 6906} |
| `chromeRendererPssKb` | {'int': 6906} |
| `chromeRenderers` | {'int': 6906} |
| `chromeTabs` | {'int': 6906} |
| `chromeTabsProbedProfiles` | {'int': 6906} |
| `chromeUtilityPssKb` | {'int': 6906} |
| `desktopPssKb` | {'int': 6906} |
| `hostPssKb` | {'int': 6906} |
| `kind` | {'str': 6906} |
| `memAvailableKb` | {'int': 6906} |
| `memTotalKb` | {'int': 6906} |
| `otherPssKb` | {'int': 6906} |
| `processes` | {'int': 6906} |
| `pssFallbackProcesses` | {'int': 6906} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
