# sandbox_telemetry_parse — 2026-11-24 06:54:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2174818 lines=4821
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4806 |
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
| `chromeBrowserPssKb` | {'int': 4806} |
| `chromeGpuPssKb` | {'int': 4806} |
| `chromeOtherPssKb` | {'int': 4806} |
| `chromeProcesses` | {'int': 4806} |
| `chromeProfiles` | {'int': 4806} |
| `chromeRendererMaxPssKb` | {'int': 4806} |
| `chromeRendererPssKb` | {'int': 4806} |
| `chromeRenderers` | {'int': 4806} |
| `chromeTabs` | {'int': 4806} |
| `chromeTabsProbedProfiles` | {'int': 4806} |
| `chromeUtilityPssKb` | {'int': 4806} |
| `desktopPssKb` | {'int': 4806} |
| `hostPssKb` | {'int': 4806} |
| `kind` | {'str': 4806} |
| `memAvailableKb` | {'int': 4806} |
| `memTotalKb` | {'int': 4806} |
| `otherPssKb` | {'int': 4806} |
| `processes` | {'int': 4806} |
| `pssFallbackProcesses` | {'int': 4806} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
