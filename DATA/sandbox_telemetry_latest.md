# sandbox_telemetry_parse — 2026-11-09 11:43:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=640759 lines=1424
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1415 |
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
| `chromeBrowserPssKb` | {'int': 1415} |
| `chromeGpuPssKb` | {'int': 1415} |
| `chromeOtherPssKb` | {'int': 1415} |
| `chromeProcesses` | {'int': 1415} |
| `chromeProfiles` | {'int': 1415} |
| `chromeRendererMaxPssKb` | {'int': 1415} |
| `chromeRendererPssKb` | {'int': 1415} |
| `chromeRenderers` | {'int': 1415} |
| `chromeTabs` | {'int': 1415} |
| `chromeTabsProbedProfiles` | {'int': 1415} |
| `chromeUtilityPssKb` | {'int': 1415} |
| `desktopPssKb` | {'int': 1415} |
| `hostPssKb` | {'int': 1415} |
| `kind` | {'str': 1415} |
| `memAvailableKb` | {'int': 1415} |
| `memTotalKb` | {'int': 1415} |
| `otherPssKb` | {'int': 1415} |
| `processes` | {'int': 1415} |
| `pssFallbackProcesses` | {'int': 1415} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
