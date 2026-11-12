# sandbox_telemetry_parse — 2026-11-12 01:08:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1902847 lines=4213
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4204 |
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
| `chromeBrowserPssKb` | {'int': 4204} |
| `chromeGpuPssKb` | {'int': 4204} |
| `chromeOtherPssKb` | {'int': 4204} |
| `chromeProcesses` | {'int': 4204} |
| `chromeProfiles` | {'int': 4204} |
| `chromeRendererMaxPssKb` | {'int': 4204} |
| `chromeRendererPssKb` | {'int': 4204} |
| `chromeRenderers` | {'int': 4204} |
| `chromeTabs` | {'int': 4204} |
| `chromeTabsProbedProfiles` | {'int': 4204} |
| `chromeUtilityPssKb` | {'int': 4204} |
| `desktopPssKb` | {'int': 4204} |
| `hostPssKb` | {'int': 4204} |
| `kind` | {'str': 4204} |
| `memAvailableKb` | {'int': 4204} |
| `memTotalKb` | {'int': 4204} |
| `otherPssKb` | {'int': 4204} |
| `processes` | {'int': 4204} |
| `pssFallbackProcesses` | {'int': 4204} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
