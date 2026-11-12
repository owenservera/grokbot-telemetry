# sandbox_telemetry_parse — 2026-11-12 06:24:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2005571 lines=4440
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4431 |
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
| `chromeBrowserPssKb` | {'int': 4431} |
| `chromeGpuPssKb` | {'int': 4431} |
| `chromeOtherPssKb` | {'int': 4431} |
| `chromeProcesses` | {'int': 4431} |
| `chromeProfiles` | {'int': 4431} |
| `chromeRendererMaxPssKb` | {'int': 4431} |
| `chromeRendererPssKb` | {'int': 4431} |
| `chromeRenderers` | {'int': 4431} |
| `chromeTabs` | {'int': 4431} |
| `chromeTabsProbedProfiles` | {'int': 4431} |
| `chromeUtilityPssKb` | {'int': 4431} |
| `desktopPssKb` | {'int': 4431} |
| `hostPssKb` | {'int': 4431} |
| `kind` | {'str': 4431} |
| `memAvailableKb` | {'int': 4431} |
| `memTotalKb` | {'int': 4431} |
| `otherPssKb` | {'int': 4431} |
| `processes` | {'int': 4431} |
| `pssFallbackProcesses` | {'int': 4431} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
