# sandbox_telemetry_parse — 2026-11-12 11:54:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2116414 lines=4685
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4676 |
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
| `chromeBrowserPssKb` | {'int': 4676} |
| `chromeGpuPssKb` | {'int': 4676} |
| `chromeOtherPssKb` | {'int': 4676} |
| `chromeProcesses` | {'int': 4676} |
| `chromeProfiles` | {'int': 4676} |
| `chromeRendererMaxPssKb` | {'int': 4676} |
| `chromeRendererPssKb` | {'int': 4676} |
| `chromeRenderers` | {'int': 4676} |
| `chromeTabs` | {'int': 4676} |
| `chromeTabsProbedProfiles` | {'int': 4676} |
| `chromeUtilityPssKb` | {'int': 4676} |
| `desktopPssKb` | {'int': 4676} |
| `hostPssKb` | {'int': 4676} |
| `kind` | {'str': 4676} |
| `memAvailableKb` | {'int': 4676} |
| `memTotalKb` | {'int': 4676} |
| `otherPssKb` | {'int': 4676} |
| `processes` | {'int': 4676} |
| `pssFallbackProcesses` | {'int': 4676} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
