# sandbox_telemetry_parse — 2026-11-06 19:19:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=127834 lines=290
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 281 |
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
| `chromeBrowserPssKb` | {'int': 281} |
| `chromeGpuPssKb` | {'int': 281} |
| `chromeOtherPssKb` | {'int': 281} |
| `chromeProcesses` | {'int': 281} |
| `chromeProfiles` | {'int': 281} |
| `chromeRendererMaxPssKb` | {'int': 281} |
| `chromeRendererPssKb` | {'int': 281} |
| `chromeRenderers` | {'int': 281} |
| `chromeTabs` | {'int': 281} |
| `chromeTabsProbedProfiles` | {'int': 281} |
| `chromeUtilityPssKb` | {'int': 281} |
| `desktopPssKb` | {'int': 281} |
| `hostPssKb` | {'int': 281} |
| `kind` | {'str': 281} |
| `memAvailableKb` | {'int': 281} |
| `memTotalKb` | {'int': 281} |
| `otherPssKb` | {'int': 281} |
| `processes` | {'int': 281} |
| `pssFallbackProcesses` | {'int': 281} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
