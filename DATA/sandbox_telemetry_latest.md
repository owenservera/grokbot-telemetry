# sandbox_telemetry_parse — 2026-11-25 17:28:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2852852 lines=6320
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6305 |
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
| `chromeBrowserPssKb` | {'int': 6305} |
| `chromeGpuPssKb` | {'int': 6305} |
| `chromeOtherPssKb` | {'int': 6305} |
| `chromeProcesses` | {'int': 6305} |
| `chromeProfiles` | {'int': 6305} |
| `chromeRendererMaxPssKb` | {'int': 6305} |
| `chromeRendererPssKb` | {'int': 6305} |
| `chromeRenderers` | {'int': 6305} |
| `chromeTabs` | {'int': 6305} |
| `chromeTabsProbedProfiles` | {'int': 6305} |
| `chromeUtilityPssKb` | {'int': 6305} |
| `desktopPssKb` | {'int': 6305} |
| `hostPssKb` | {'int': 6305} |
| `kind` | {'str': 6305} |
| `memAvailableKb` | {'int': 6305} |
| `memTotalKb` | {'int': 6305} |
| `otherPssKb` | {'int': 6305} |
| `processes` | {'int': 6305} |
| `pssFallbackProcesses` | {'int': 6305} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
