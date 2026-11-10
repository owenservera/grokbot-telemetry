# sandbox_telemetry_parse — 2026-11-11 00:15:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1393837 lines=3088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3079 |
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
| `chromeBrowserPssKb` | {'int': 3079} |
| `chromeGpuPssKb` | {'int': 3079} |
| `chromeOtherPssKb` | {'int': 3079} |
| `chromeProcesses` | {'int': 3079} |
| `chromeProfiles` | {'int': 3079} |
| `chromeRendererMaxPssKb` | {'int': 3079} |
| `chromeRendererPssKb` | {'int': 3079} |
| `chromeRenderers` | {'int': 3079} |
| `chromeTabs` | {'int': 3079} |
| `chromeTabsProbedProfiles` | {'int': 3079} |
| `chromeUtilityPssKb` | {'int': 3079} |
| `desktopPssKb` | {'int': 3079} |
| `hostPssKb` | {'int': 3079} |
| `kind` | {'str': 3079} |
| `memAvailableKb` | {'int': 3079} |
| `memTotalKb` | {'int': 3079} |
| `otherPssKb` | {'int': 3079} |
| `processes` | {'int': 3079} |
| `pssFallbackProcesses` | {'int': 3079} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
