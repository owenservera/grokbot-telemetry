# sandbox_telemetry_parse — 2026-11-10 21:15:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1325501 lines=2937
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2928 |
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
| `chromeBrowserPssKb` | {'int': 2928} |
| `chromeGpuPssKb` | {'int': 2928} |
| `chromeOtherPssKb` | {'int': 2928} |
| `chromeProcesses` | {'int': 2928} |
| `chromeProfiles` | {'int': 2928} |
| `chromeRendererMaxPssKb` | {'int': 2928} |
| `chromeRendererPssKb` | {'int': 2928} |
| `chromeRenderers` | {'int': 2928} |
| `chromeTabs` | {'int': 2928} |
| `chromeTabsProbedProfiles` | {'int': 2928} |
| `chromeUtilityPssKb` | {'int': 2928} |
| `desktopPssKb` | {'int': 2928} |
| `hostPssKb` | {'int': 2928} |
| `kind` | {'str': 2928} |
| `memAvailableKb` | {'int': 2928} |
| `memTotalKb` | {'int': 2928} |
| `otherPssKb` | {'int': 2928} |
| `processes` | {'int': 2928} |
| `pssFallbackProcesses` | {'int': 2928} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
