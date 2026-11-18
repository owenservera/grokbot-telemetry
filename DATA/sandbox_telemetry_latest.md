# sandbox_telemetry_parse — 2026-11-18 23:51:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1032191 lines=2290
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2281 |
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
| `chromeBrowserPssKb` | {'int': 2281} |
| `chromeGpuPssKb` | {'int': 2281} |
| `chromeOtherPssKb` | {'int': 2281} |
| `chromeProcesses` | {'int': 2281} |
| `chromeProfiles` | {'int': 2281} |
| `chromeRendererMaxPssKb` | {'int': 2281} |
| `chromeRendererPssKb` | {'int': 2281} |
| `chromeRenderers` | {'int': 2281} |
| `chromeTabs` | {'int': 2281} |
| `chromeTabsProbedProfiles` | {'int': 2281} |
| `chromeUtilityPssKb` | {'int': 2281} |
| `desktopPssKb` | {'int': 2281} |
| `hostPssKb` | {'int': 2281} |
| `kind` | {'str': 2281} |
| `memAvailableKb` | {'int': 2281} |
| `memTotalKb` | {'int': 2281} |
| `otherPssKb` | {'int': 2281} |
| `processes` | {'int': 2281} |
| `pssFallbackProcesses` | {'int': 2281} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
