# sandbox_telemetry_parse — 2026-11-24 21:33:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2458974 lines=5449
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5434 |
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
| `chromeBrowserPssKb` | {'int': 5434} |
| `chromeGpuPssKb` | {'int': 5434} |
| `chromeOtherPssKb` | {'int': 5434} |
| `chromeProcesses` | {'int': 5434} |
| `chromeProfiles` | {'int': 5434} |
| `chromeRendererMaxPssKb` | {'int': 5434} |
| `chromeRendererPssKb` | {'int': 5434} |
| `chromeRenderers` | {'int': 5434} |
| `chromeTabs` | {'int': 5434} |
| `chromeTabsProbedProfiles` | {'int': 5434} |
| `chromeUtilityPssKb` | {'int': 5434} |
| `desktopPssKb` | {'int': 5434} |
| `hostPssKb` | {'int': 5434} |
| `kind` | {'str': 5434} |
| `memAvailableKb` | {'int': 5434} |
| `memTotalKb` | {'int': 5434} |
| `otherPssKb` | {'int': 5434} |
| `processes` | {'int': 5434} |
| `pssFallbackProcesses` | {'int': 5434} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
