# sandbox_telemetry_parse — 2026-11-23 17:08:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1919218 lines=4256
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4241 |
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
| `chromeBrowserPssKb` | {'int': 4241} |
| `chromeGpuPssKb` | {'int': 4241} |
| `chromeOtherPssKb` | {'int': 4241} |
| `chromeProcesses` | {'int': 4241} |
| `chromeProfiles` | {'int': 4241} |
| `chromeRendererMaxPssKb` | {'int': 4241} |
| `chromeRendererPssKb` | {'int': 4241} |
| `chromeRenderers` | {'int': 4241} |
| `chromeTabs` | {'int': 4241} |
| `chromeTabsProbedProfiles` | {'int': 4241} |
| `chromeUtilityPssKb` | {'int': 4241} |
| `desktopPssKb` | {'int': 4241} |
| `hostPssKb` | {'int': 4241} |
| `kind` | {'str': 4241} |
| `memAvailableKb` | {'int': 4241} |
| `memTotalKb` | {'int': 4241} |
| `otherPssKb` | {'int': 4241} |
| `processes` | {'int': 4241} |
| `pssFallbackProcesses` | {'int': 4241} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
