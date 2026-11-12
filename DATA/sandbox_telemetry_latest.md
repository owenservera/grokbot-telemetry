# sandbox_telemetry_parse — 2026-11-12 20:14:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2310274 lines=5113
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5104 |
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
| `chromeBrowserPssKb` | {'int': 5104} |
| `chromeGpuPssKb` | {'int': 5104} |
| `chromeOtherPssKb` | {'int': 5104} |
| `chromeProcesses` | {'int': 5104} |
| `chromeProfiles` | {'int': 5104} |
| `chromeRendererMaxPssKb` | {'int': 5104} |
| `chromeRendererPssKb` | {'int': 5104} |
| `chromeRenderers` | {'int': 5104} |
| `chromeTabs` | {'int': 5104} |
| `chromeTabsProbedProfiles` | {'int': 5104} |
| `chromeUtilityPssKb` | {'int': 5104} |
| `desktopPssKb` | {'int': 5104} |
| `hostPssKb` | {'int': 5104} |
| `kind` | {'str': 5104} |
| `memAvailableKb` | {'int': 5104} |
| `memTotalKb` | {'int': 5104} |
| `otherPssKb` | {'int': 5104} |
| `processes` | {'int': 5104} |
| `pssFallbackProcesses` | {'int': 5104} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
