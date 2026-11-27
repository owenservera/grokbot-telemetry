# sandbox_telemetry_parse — 2026-11-27 13:24:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=434401 lines=967
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 959 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 959} |
| `chromeGpuPssKb` | {'int': 959} |
| `chromeOtherPssKb` | {'int': 959} |
| `chromeProcesses` | {'int': 959} |
| `chromeProfiles` | {'int': 959} |
| `chromeRendererMaxPssKb` | {'int': 959} |
| `chromeRendererPssKb` | {'int': 959} |
| `chromeRenderers` | {'int': 959} |
| `chromeTabs` | {'int': 959} |
| `chromeTabsProbedProfiles` | {'int': 959} |
| `chromeUtilityPssKb` | {'int': 959} |
| `desktopPssKb` | {'int': 959} |
| `hostPssKb` | {'int': 959} |
| `kind` | {'str': 959} |
| `memAvailableKb` | {'int': 959} |
| `memTotalKb` | {'int': 959} |
| `otherPssKb` | {'int': 959} |
| `processes` | {'int': 959} |
| `pssFallbackProcesses` | {'int': 959} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
