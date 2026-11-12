# sandbox_telemetry_parse — 2026-11-12 11:19:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2103749 lines=4657
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4648 |
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
| `chromeBrowserPssKb` | {'int': 4648} |
| `chromeGpuPssKb` | {'int': 4648} |
| `chromeOtherPssKb` | {'int': 4648} |
| `chromeProcesses` | {'int': 4648} |
| `chromeProfiles` | {'int': 4648} |
| `chromeRendererMaxPssKb` | {'int': 4648} |
| `chromeRendererPssKb` | {'int': 4648} |
| `chromeRenderers` | {'int': 4648} |
| `chromeTabs` | {'int': 4648} |
| `chromeTabsProbedProfiles` | {'int': 4648} |
| `chromeUtilityPssKb` | {'int': 4648} |
| `desktopPssKb` | {'int': 4648} |
| `hostPssKb` | {'int': 4648} |
| `kind` | {'str': 4648} |
| `memAvailableKb` | {'int': 4648} |
| `memTotalKb` | {'int': 4648} |
| `otherPssKb` | {'int': 4648} |
| `processes` | {'int': 4648} |
| `pssFallbackProcesses` | {'int': 4648} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
