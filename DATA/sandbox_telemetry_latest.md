# sandbox_telemetry_parse — 2026-11-28 20:42:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1050808 lines=2329
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2321 |
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
| `chromeBrowserPssKb` | {'int': 2321} |
| `chromeGpuPssKb` | {'int': 2321} |
| `chromeOtherPssKb` | {'int': 2321} |
| `chromeProcesses` | {'int': 2321} |
| `chromeProfiles` | {'int': 2321} |
| `chromeRendererMaxPssKb` | {'int': 2321} |
| `chromeRendererPssKb` | {'int': 2321} |
| `chromeRenderers` | {'int': 2321} |
| `chromeTabs` | {'int': 2321} |
| `chromeTabsProbedProfiles` | {'int': 2321} |
| `chromeUtilityPssKb` | {'int': 2321} |
| `desktopPssKb` | {'int': 2321} |
| `hostPssKb` | {'int': 2321} |
| `kind` | {'str': 2321} |
| `memAvailableKb` | {'int': 2321} |
| `memTotalKb` | {'int': 2321} |
| `otherPssKb` | {'int': 2321} |
| `processes` | {'int': 2321} |
| `pssFallbackProcesses` | {'int': 2321} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
