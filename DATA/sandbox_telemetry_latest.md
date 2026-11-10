# sandbox_telemetry_parse — 2026-11-10 09:04:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1068344 lines=2369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2360 |
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
| `chromeBrowserPssKb` | {'int': 2360} |
| `chromeGpuPssKb` | {'int': 2360} |
| `chromeOtherPssKb` | {'int': 2360} |
| `chromeProcesses` | {'int': 2360} |
| `chromeProfiles` | {'int': 2360} |
| `chromeRendererMaxPssKb` | {'int': 2360} |
| `chromeRendererPssKb` | {'int': 2360} |
| `chromeRenderers` | {'int': 2360} |
| `chromeTabs` | {'int': 2360} |
| `chromeTabsProbedProfiles` | {'int': 2360} |
| `chromeUtilityPssKb` | {'int': 2360} |
| `desktopPssKb` | {'int': 2360} |
| `hostPssKb` | {'int': 2360} |
| `kind` | {'str': 2360} |
| `memAvailableKb` | {'int': 2360} |
| `memTotalKb` | {'int': 2360} |
| `otherPssKb` | {'int': 2360} |
| `processes` | {'int': 2360} |
| `pssFallbackProcesses` | {'int': 2360} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
