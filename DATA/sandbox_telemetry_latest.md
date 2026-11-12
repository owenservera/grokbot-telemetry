# sandbox_telemetry_parse — 2026-11-12 14:18:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2168485 lines=4800
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4791 |
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
| `chromeBrowserPssKb` | {'int': 4791} |
| `chromeGpuPssKb` | {'int': 4791} |
| `chromeOtherPssKb` | {'int': 4791} |
| `chromeProcesses` | {'int': 4791} |
| `chromeProfiles` | {'int': 4791} |
| `chromeRendererMaxPssKb` | {'int': 4791} |
| `chromeRendererPssKb` | {'int': 4791} |
| `chromeRenderers` | {'int': 4791} |
| `chromeTabs` | {'int': 4791} |
| `chromeTabsProbedProfiles` | {'int': 4791} |
| `chromeUtilityPssKb` | {'int': 4791} |
| `desktopPssKb` | {'int': 4791} |
| `hostPssKb` | {'int': 4791} |
| `kind` | {'str': 4791} |
| `memAvailableKb` | {'int': 4791} |
| `memTotalKb` | {'int': 4791} |
| `otherPssKb` | {'int': 4791} |
| `processes` | {'int': 4791} |
| `pssFallbackProcesses` | {'int': 4791} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
