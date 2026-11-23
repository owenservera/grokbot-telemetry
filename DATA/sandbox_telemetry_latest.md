# sandbox_telemetry_parse — 2026-11-23 18:10:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1937302 lines=4296
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4281 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4281} |
| `chromeGpuPssKb` | {'int': 4281} |
| `chromeOtherPssKb` | {'int': 4281} |
| `chromeProcesses` | {'int': 4281} |
| `chromeProfiles` | {'int': 4281} |
| `chromeRendererMaxPssKb` | {'int': 4281} |
| `chromeRendererPssKb` | {'int': 4281} |
| `chromeRenderers` | {'int': 4281} |
| `chromeTabs` | {'int': 4281} |
| `chromeTabsProbedProfiles` | {'int': 4281} |
| `chromeUtilityPssKb` | {'int': 4281} |
| `desktopPssKb` | {'int': 4281} |
| `hostPssKb` | {'int': 4281} |
| `kind` | {'str': 4281} |
| `memAvailableKb` | {'int': 4281} |
| `memTotalKb` | {'int': 4281} |
| `otherPssKb` | {'int': 4281} |
| `processes` | {'int': 4281} |
| `pssFallbackProcesses` | {'int': 4281} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
