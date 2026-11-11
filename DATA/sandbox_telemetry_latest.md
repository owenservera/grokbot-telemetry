# sandbox_telemetry_parse — 2026-11-11 15:59:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1705044 lines=3776
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3767 |
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
| `chromeBrowserPssKb` | {'int': 3767} |
| `chromeGpuPssKb` | {'int': 3767} |
| `chromeOtherPssKb` | {'int': 3767} |
| `chromeProcesses` | {'int': 3767} |
| `chromeProfiles` | {'int': 3767} |
| `chromeRendererMaxPssKb` | {'int': 3767} |
| `chromeRendererPssKb` | {'int': 3767} |
| `chromeRenderers` | {'int': 3767} |
| `chromeTabs` | {'int': 3767} |
| `chromeTabsProbedProfiles` | {'int': 3767} |
| `chromeUtilityPssKb` | {'int': 3767} |
| `desktopPssKb` | {'int': 3767} |
| `hostPssKb` | {'int': 3767} |
| `kind` | {'str': 3767} |
| `memAvailableKb` | {'int': 3767} |
| `memTotalKb` | {'int': 3767} |
| `otherPssKb` | {'int': 3767} |
| `processes` | {'int': 3767} |
| `pssFallbackProcesses` | {'int': 3767} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
