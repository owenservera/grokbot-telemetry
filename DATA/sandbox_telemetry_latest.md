# sandbox_telemetry_parse — 2026-11-19 02:25:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1080587 lines=2397
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2388 |
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
| `chromeBrowserPssKb` | {'int': 2388} |
| `chromeGpuPssKb` | {'int': 2388} |
| `chromeOtherPssKb` | {'int': 2388} |
| `chromeProcesses` | {'int': 2388} |
| `chromeProfiles` | {'int': 2388} |
| `chromeRendererMaxPssKb` | {'int': 2388} |
| `chromeRendererPssKb` | {'int': 2388} |
| `chromeRenderers` | {'int': 2388} |
| `chromeTabs` | {'int': 2388} |
| `chromeTabsProbedProfiles` | {'int': 2388} |
| `chromeUtilityPssKb` | {'int': 2388} |
| `desktopPssKb` | {'int': 2388} |
| `hostPssKb` | {'int': 2388} |
| `kind` | {'str': 2388} |
| `memAvailableKb` | {'int': 2388} |
| `memTotalKb` | {'int': 2388} |
| `otherPssKb` | {'int': 2388} |
| `processes` | {'int': 2388} |
| `pssFallbackProcesses` | {'int': 2388} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
