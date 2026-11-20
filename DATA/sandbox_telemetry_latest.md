# sandbox_telemetry_parse — 2026-11-20 03:21:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1553882 lines=3445
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3434 |
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
| `chromeBrowserPssKb` | {'int': 3434} |
| `chromeGpuPssKb` | {'int': 3434} |
| `chromeOtherPssKb` | {'int': 3434} |
| `chromeProcesses` | {'int': 3434} |
| `chromeProfiles` | {'int': 3434} |
| `chromeRendererMaxPssKb` | {'int': 3434} |
| `chromeRendererPssKb` | {'int': 3434} |
| `chromeRenderers` | {'int': 3434} |
| `chromeTabs` | {'int': 3434} |
| `chromeTabsProbedProfiles` | {'int': 3434} |
| `chromeUtilityPssKb` | {'int': 3434} |
| `desktopPssKb` | {'int': 3434} |
| `hostPssKb` | {'int': 3434} |
| `kind` | {'str': 3434} |
| `memAvailableKb` | {'int': 3434} |
| `memTotalKb` | {'int': 3434} |
| `otherPssKb` | {'int': 3434} |
| `processes` | {'int': 3434} |
| `pssFallbackProcesses` | {'int': 3434} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
