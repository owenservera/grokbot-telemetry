# sandbox_telemetry_parse — 2026-11-19 14:13:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1307603 lines=2899
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2890 |
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
| `chromeBrowserPssKb` | {'int': 2890} |
| `chromeGpuPssKb` | {'int': 2890} |
| `chromeOtherPssKb` | {'int': 2890} |
| `chromeProcesses` | {'int': 2890} |
| `chromeProfiles` | {'int': 2890} |
| `chromeRendererMaxPssKb` | {'int': 2890} |
| `chromeRendererPssKb` | {'int': 2890} |
| `chromeRenderers` | {'int': 2890} |
| `chromeTabs` | {'int': 2890} |
| `chromeTabsProbedProfiles` | {'int': 2890} |
| `chromeUtilityPssKb` | {'int': 2890} |
| `desktopPssKb` | {'int': 2890} |
| `hostPssKb` | {'int': 2890} |
| `kind` | {'str': 2890} |
| `memAvailableKb` | {'int': 2890} |
| `memTotalKb` | {'int': 2890} |
| `otherPssKb` | {'int': 2890} |
| `processes` | {'int': 2890} |
| `pssFallbackProcesses` | {'int': 2890} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
