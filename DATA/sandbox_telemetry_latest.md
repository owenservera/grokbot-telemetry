# sandbox_telemetry_parse — 2026-11-18 04:44:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=682427 lines=1515
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1508 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1508} |
| `chromeGpuPssKb` | {'int': 1508} |
| `chromeOtherPssKb` | {'int': 1508} |
| `chromeProcesses` | {'int': 1508} |
| `chromeProfiles` | {'int': 1508} |
| `chromeRendererMaxPssKb` | {'int': 1508} |
| `chromeRendererPssKb` | {'int': 1508} |
| `chromeRenderers` | {'int': 1508} |
| `chromeTabs` | {'int': 1508} |
| `chromeTabsProbedProfiles` | {'int': 1508} |
| `chromeUtilityPssKb` | {'int': 1508} |
| `desktopPssKb` | {'int': 1508} |
| `hostPssKb` | {'int': 1508} |
| `kind` | {'str': 1508} |
| `memAvailableKb` | {'int': 1508} |
| `memTotalKb` | {'int': 1508} |
| `otherPssKb` | {'int': 1508} |
| `processes` | {'int': 1508} |
| `pssFallbackProcesses` | {'int': 1508} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
