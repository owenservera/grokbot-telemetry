# sandbox_telemetry_parse — 2026-11-26 12:13:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3243226 lines=7183
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7168 |
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
| `chromeBrowserPssKb` | {'int': 7168} |
| `chromeGpuPssKb` | {'int': 7168} |
| `chromeOtherPssKb` | {'int': 7168} |
| `chromeProcesses` | {'int': 7168} |
| `chromeProfiles` | {'int': 7168} |
| `chromeRendererMaxPssKb` | {'int': 7168} |
| `chromeRendererPssKb` | {'int': 7168} |
| `chromeRenderers` | {'int': 7168} |
| `chromeTabs` | {'int': 7168} |
| `chromeTabsProbedProfiles` | {'int': 7168} |
| `chromeUtilityPssKb` | {'int': 7168} |
| `desktopPssKb` | {'int': 7168} |
| `hostPssKb` | {'int': 7168} |
| `kind` | {'str': 7168} |
| `memAvailableKb` | {'int': 7168} |
| `memTotalKb` | {'int': 7168} |
| `otherPssKb` | {'int': 7168} |
| `processes` | {'int': 7168} |
| `pssFallbackProcesses` | {'int': 7168} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
