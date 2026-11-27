# sandbox_telemetry_parse — 2026-11-27 18:32:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=543519 lines=1208
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1200 |
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
| `chromeBrowserPssKb` | {'int': 1200} |
| `chromeGpuPssKb` | {'int': 1200} |
| `chromeOtherPssKb` | {'int': 1200} |
| `chromeProcesses` | {'int': 1200} |
| `chromeProfiles` | {'int': 1200} |
| `chromeRendererMaxPssKb` | {'int': 1200} |
| `chromeRendererPssKb` | {'int': 1200} |
| `chromeRenderers` | {'int': 1200} |
| `chromeTabs` | {'int': 1200} |
| `chromeTabsProbedProfiles` | {'int': 1200} |
| `chromeUtilityPssKb` | {'int': 1200} |
| `desktopPssKb` | {'int': 1200} |
| `hostPssKb` | {'int': 1200} |
| `kind` | {'str': 1200} |
| `memAvailableKb` | {'int': 1200} |
| `memTotalKb` | {'int': 1200} |
| `otherPssKb` | {'int': 1200} |
| `processes` | {'int': 1200} |
| `pssFallbackProcesses` | {'int': 1200} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
