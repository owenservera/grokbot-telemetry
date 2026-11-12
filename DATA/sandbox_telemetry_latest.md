# sandbox_telemetry_parse — 2026-11-12 08:28:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2044023 lines=4525
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4516 |
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
| `chromeBrowserPssKb` | {'int': 4516} |
| `chromeGpuPssKb` | {'int': 4516} |
| `chromeOtherPssKb` | {'int': 4516} |
| `chromeProcesses` | {'int': 4516} |
| `chromeProfiles` | {'int': 4516} |
| `chromeRendererMaxPssKb` | {'int': 4516} |
| `chromeRendererPssKb` | {'int': 4516} |
| `chromeRenderers` | {'int': 4516} |
| `chromeTabs` | {'int': 4516} |
| `chromeTabsProbedProfiles` | {'int': 4516} |
| `chromeUtilityPssKb` | {'int': 4516} |
| `desktopPssKb` | {'int': 4516} |
| `hostPssKb` | {'int': 4516} |
| `kind` | {'str': 4516} |
| `memAvailableKb` | {'int': 4516} |
| `memTotalKb` | {'int': 4516} |
| `otherPssKb` | {'int': 4516} |
| `processes` | {'int': 4516} |
| `pssFallbackProcesses` | {'int': 4516} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
