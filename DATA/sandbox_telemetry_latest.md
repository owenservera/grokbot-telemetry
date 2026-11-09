# sandbox_telemetry_parse — 2026-11-09 21:46:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=852592 lines=1892
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1883 |
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
| `chromeBrowserPssKb` | {'int': 1883} |
| `chromeGpuPssKb` | {'int': 1883} |
| `chromeOtherPssKb` | {'int': 1883} |
| `chromeProcesses` | {'int': 1883} |
| `chromeProfiles` | {'int': 1883} |
| `chromeRendererMaxPssKb` | {'int': 1883} |
| `chromeRendererPssKb` | {'int': 1883} |
| `chromeRenderers` | {'int': 1883} |
| `chromeTabs` | {'int': 1883} |
| `chromeTabsProbedProfiles` | {'int': 1883} |
| `chromeUtilityPssKb` | {'int': 1883} |
| `desktopPssKb` | {'int': 1883} |
| `hostPssKb` | {'int': 1883} |
| `kind` | {'str': 1883} |
| `memAvailableKb` | {'int': 1883} |
| `memTotalKb` | {'int': 1883} |
| `otherPssKb` | {'int': 1883} |
| `processes` | {'int': 1883} |
| `pssFallbackProcesses` | {'int': 1883} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
