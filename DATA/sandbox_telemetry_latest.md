# sandbox_telemetry_parse — 2026-11-25 16:53:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2839736 lines=6291
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6276 |
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
| `chromeBrowserPssKb` | {'int': 6276} |
| `chromeGpuPssKb` | {'int': 6276} |
| `chromeOtherPssKb` | {'int': 6276} |
| `chromeProcesses` | {'int': 6276} |
| `chromeProfiles` | {'int': 6276} |
| `chromeRendererMaxPssKb` | {'int': 6276} |
| `chromeRendererPssKb` | {'int': 6276} |
| `chromeRenderers` | {'int': 6276} |
| `chromeTabs` | {'int': 6276} |
| `chromeTabsProbedProfiles` | {'int': 6276} |
| `chromeUtilityPssKb` | {'int': 6276} |
| `desktopPssKb` | {'int': 6276} |
| `hostPssKb` | {'int': 6276} |
| `kind` | {'str': 6276} |
| `memAvailableKb` | {'int': 6276} |
| `memTotalKb` | {'int': 6276} |
| `otherPssKb` | {'int': 6276} |
| `processes` | {'int': 6276} |
| `pssFallbackProcesses` | {'int': 6276} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
