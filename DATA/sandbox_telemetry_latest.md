# sandbox_telemetry_parse — 2026-11-10 08:46:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1063366 lines=2358
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2349 |
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
| `chromeBrowserPssKb` | {'int': 2349} |
| `chromeGpuPssKb` | {'int': 2349} |
| `chromeOtherPssKb` | {'int': 2349} |
| `chromeProcesses` | {'int': 2349} |
| `chromeProfiles` | {'int': 2349} |
| `chromeRendererMaxPssKb` | {'int': 2349} |
| `chromeRendererPssKb` | {'int': 2349} |
| `chromeRenderers` | {'int': 2349} |
| `chromeTabs` | {'int': 2349} |
| `chromeTabsProbedProfiles` | {'int': 2349} |
| `chromeUtilityPssKb` | {'int': 2349} |
| `desktopPssKb` | {'int': 2349} |
| `hostPssKb` | {'int': 2349} |
| `kind` | {'str': 2349} |
| `memAvailableKb` | {'int': 2349} |
| `memTotalKb` | {'int': 2349} |
| `otherPssKb` | {'int': 2349} |
| `processes` | {'int': 2349} |
| `pssFallbackProcesses` | {'int': 2349} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
