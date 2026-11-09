# sandbox_telemetry_parse — 2026-11-09 07:41:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=557512 lines=1240
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1231 |
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
| `chromeBrowserPssKb` | {'int': 1231} |
| `chromeGpuPssKb` | {'int': 1231} |
| `chromeOtherPssKb` | {'int': 1231} |
| `chromeProcesses` | {'int': 1231} |
| `chromeProfiles` | {'int': 1231} |
| `chromeRendererMaxPssKb` | {'int': 1231} |
| `chromeRendererPssKb` | {'int': 1231} |
| `chromeRenderers` | {'int': 1231} |
| `chromeTabs` | {'int': 1231} |
| `chromeTabsProbedProfiles` | {'int': 1231} |
| `chromeUtilityPssKb` | {'int': 1231} |
| `desktopPssKb` | {'int': 1231} |
| `hostPssKb` | {'int': 1231} |
| `kind` | {'str': 1231} |
| `memAvailableKb` | {'int': 1231} |
| `memTotalKb` | {'int': 1231} |
| `otherPssKb` | {'int': 1231} |
| `processes` | {'int': 1231} |
| `pssFallbackProcesses` | {'int': 1231} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
