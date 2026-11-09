# sandbox_telemetry_parse — 2026-11-09 08:52:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=580134 lines=1290
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1281 |
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
| `chromeBrowserPssKb` | {'int': 1281} |
| `chromeGpuPssKb` | {'int': 1281} |
| `chromeOtherPssKb` | {'int': 1281} |
| `chromeProcesses` | {'int': 1281} |
| `chromeProfiles` | {'int': 1281} |
| `chromeRendererMaxPssKb` | {'int': 1281} |
| `chromeRendererPssKb` | {'int': 1281} |
| `chromeRenderers` | {'int': 1281} |
| `chromeTabs` | {'int': 1281} |
| `chromeTabsProbedProfiles` | {'int': 1281} |
| `chromeUtilityPssKb` | {'int': 1281} |
| `desktopPssKb` | {'int': 1281} |
| `hostPssKb` | {'int': 1281} |
| `kind` | {'str': 1281} |
| `memAvailableKb` | {'int': 1281} |
| `memTotalKb` | {'int': 1281} |
| `otherPssKb` | {'int': 1281} |
| `processes` | {'int': 1281} |
| `pssFallbackProcesses` | {'int': 1281} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
