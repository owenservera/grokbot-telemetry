# sandbox_telemetry_parse — 2026-11-16 15:24:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=22260 lines=55
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 48 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 48} |
| `chromeGpuPssKb` | {'int': 48} |
| `chromeOtherPssKb` | {'int': 48} |
| `chromeProcesses` | {'int': 48} |
| `chromeProfiles` | {'int': 48} |
| `chromeRendererMaxPssKb` | {'int': 48} |
| `chromeRendererPssKb` | {'int': 48} |
| `chromeRenderers` | {'int': 48} |
| `chromeTabs` | {'int': 48} |
| `chromeTabsProbedProfiles` | {'int': 48} |
| `chromeUtilityPssKb` | {'int': 48} |
| `desktopPssKb` | {'int': 48} |
| `hostPssKb` | {'int': 48} |
| `kind` | {'str': 48} |
| `memAvailableKb` | {'int': 48} |
| `memTotalKb` | {'int': 48} |
| `otherPssKb` | {'int': 48} |
| `processes` | {'int': 48} |
| `pssFallbackProcesses` | {'int': 48} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
