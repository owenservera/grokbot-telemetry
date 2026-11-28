# sandbox_telemetry_parse — 2026-11-28 11:00:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=857067 lines=1901
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1893 |
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
| `chromeBrowserPssKb` | {'int': 1893} |
| `chromeGpuPssKb` | {'int': 1893} |
| `chromeOtherPssKb` | {'int': 1893} |
| `chromeProcesses` | {'int': 1893} |
| `chromeProfiles` | {'int': 1893} |
| `chromeRendererMaxPssKb` | {'int': 1893} |
| `chromeRendererPssKb` | {'int': 1893} |
| `chromeRenderers` | {'int': 1893} |
| `chromeTabs` | {'int': 1893} |
| `chromeTabsProbedProfiles` | {'int': 1893} |
| `chromeUtilityPssKb` | {'int': 1893} |
| `desktopPssKb` | {'int': 1893} |
| `hostPssKb` | {'int': 1893} |
| `kind` | {'str': 1893} |
| `memAvailableKb` | {'int': 1893} |
| `memTotalKb` | {'int': 1893} |
| `otherPssKb` | {'int': 1893} |
| `processes` | {'int': 1893} |
| `pssFallbackProcesses` | {'int': 1893} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
