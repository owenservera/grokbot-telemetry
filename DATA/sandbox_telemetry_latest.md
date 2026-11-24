# sandbox_telemetry_parse — 2026-11-24 01:14:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2068557 lines=4586
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4571 |
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
| `chromeBrowserPssKb` | {'int': 4571} |
| `chromeGpuPssKb` | {'int': 4571} |
| `chromeOtherPssKb` | {'int': 4571} |
| `chromeProcesses` | {'int': 4571} |
| `chromeProfiles` | {'int': 4571} |
| `chromeRendererMaxPssKb` | {'int': 4571} |
| `chromeRendererPssKb` | {'int': 4571} |
| `chromeRenderers` | {'int': 4571} |
| `chromeTabs` | {'int': 4571} |
| `chromeTabsProbedProfiles` | {'int': 4571} |
| `chromeUtilityPssKb` | {'int': 4571} |
| `desktopPssKb` | {'int': 4571} |
| `hostPssKb` | {'int': 4571} |
| `kind` | {'str': 4571} |
| `memAvailableKb` | {'int': 4571} |
| `memTotalKb` | {'int': 4571} |
| `otherPssKb` | {'int': 4571} |
| `processes` | {'int': 4571} |
| `pssFallbackProcesses` | {'int': 4571} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
