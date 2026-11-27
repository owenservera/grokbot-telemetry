# sandbox_telemetry_parse — 2026-11-27 21:12:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=591944 lines=1315
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1307 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1307} |
| `chromeGpuPssKb` | {'int': 1307} |
| `chromeOtherPssKb` | {'int': 1307} |
| `chromeProcesses` | {'int': 1307} |
| `chromeProfiles` | {'int': 1307} |
| `chromeRendererMaxPssKb` | {'int': 1307} |
| `chromeRendererPssKb` | {'int': 1307} |
| `chromeRenderers` | {'int': 1307} |
| `chromeTabs` | {'int': 1307} |
| `chromeTabsProbedProfiles` | {'int': 1307} |
| `chromeUtilityPssKb` | {'int': 1307} |
| `desktopPssKb` | {'int': 1307} |
| `hostPssKb` | {'int': 1307} |
| `kind` | {'str': 1307} |
| `memAvailableKb` | {'int': 1307} |
| `memTotalKb` | {'int': 1307} |
| `otherPssKb` | {'int': 1307} |
| `processes` | {'int': 1307} |
| `pssFallbackProcesses` | {'int': 1307} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
