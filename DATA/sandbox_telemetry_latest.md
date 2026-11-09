# sandbox_telemetry_parse — 2026-11-09 11:34:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=636682 lines=1415
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1406 |
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
| `chromeBrowserPssKb` | {'int': 1406} |
| `chromeGpuPssKb` | {'int': 1406} |
| `chromeOtherPssKb` | {'int': 1406} |
| `chromeProcesses` | {'int': 1406} |
| `chromeProfiles` | {'int': 1406} |
| `chromeRendererMaxPssKb` | {'int': 1406} |
| `chromeRendererPssKb` | {'int': 1406} |
| `chromeRenderers` | {'int': 1406} |
| `chromeTabs` | {'int': 1406} |
| `chromeTabsProbedProfiles` | {'int': 1406} |
| `chromeUtilityPssKb` | {'int': 1406} |
| `desktopPssKb` | {'int': 1406} |
| `hostPssKb` | {'int': 1406} |
| `kind` | {'str': 1406} |
| `memAvailableKb` | {'int': 1406} |
| `memTotalKb` | {'int': 1406} |
| `otherPssKb` | {'int': 1406} |
| `processes` | {'int': 1406} |
| `pssFallbackProcesses` | {'int': 1406} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
