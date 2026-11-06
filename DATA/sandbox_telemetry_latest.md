# sandbox_telemetry_parse — 2026-11-06 13:24:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=28129 lines=68
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 61 |
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
| `chromeBrowserPssKb` | {'int': 61} |
| `chromeGpuPssKb` | {'int': 61} |
| `chromeOtherPssKb` | {'int': 61} |
| `chromeProcesses` | {'int': 61} |
| `chromeProfiles` | {'int': 61} |
| `chromeRendererMaxPssKb` | {'int': 61} |
| `chromeRendererPssKb` | {'int': 61} |
| `chromeRenderers` | {'int': 61} |
| `chromeTabs` | {'int': 61} |
| `chromeTabsProbedProfiles` | {'int': 61} |
| `chromeUtilityPssKb` | {'int': 61} |
| `desktopPssKb` | {'int': 61} |
| `hostPssKb` | {'int': 61} |
| `kind` | {'str': 61} |
| `memAvailableKb` | {'int': 61} |
| `memTotalKb` | {'int': 61} |
| `otherPssKb` | {'int': 61} |
| `processes` | {'int': 61} |
| `pssFallbackProcesses` | {'int': 61} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
