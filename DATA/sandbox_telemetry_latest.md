# sandbox_telemetry_parse — 2026-11-19 21:32:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1449903 lines=3215
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3204 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3204} |
| `chromeGpuPssKb` | {'int': 3204} |
| `chromeOtherPssKb` | {'int': 3204} |
| `chromeProcesses` | {'int': 3204} |
| `chromeProfiles` | {'int': 3204} |
| `chromeRendererMaxPssKb` | {'int': 3204} |
| `chromeRendererPssKb` | {'int': 3204} |
| `chromeRenderers` | {'int': 3204} |
| `chromeTabs` | {'int': 3204} |
| `chromeTabsProbedProfiles` | {'int': 3204} |
| `chromeUtilityPssKb` | {'int': 3204} |
| `desktopPssKb` | {'int': 3204} |
| `hostPssKb` | {'int': 3204} |
| `kind` | {'str': 3204} |
| `memAvailableKb` | {'int': 3204} |
| `memTotalKb` | {'int': 3204} |
| `otherPssKb` | {'int': 3204} |
| `processes` | {'int': 3204} |
| `pssFallbackProcesses` | {'int': 3204} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
