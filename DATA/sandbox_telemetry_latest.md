# sandbox_telemetry_parse — 2026-11-09 15:12:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=710889 lines=1579
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1570 |
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
| `chromeBrowserPssKb` | {'int': 1570} |
| `chromeGpuPssKb` | {'int': 1570} |
| `chromeOtherPssKb` | {'int': 1570} |
| `chromeProcesses` | {'int': 1570} |
| `chromeProfiles` | {'int': 1570} |
| `chromeRendererMaxPssKb` | {'int': 1570} |
| `chromeRendererPssKb` | {'int': 1570} |
| `chromeRenderers` | {'int': 1570} |
| `chromeTabs` | {'int': 1570} |
| `chromeTabsProbedProfiles` | {'int': 1570} |
| `chromeUtilityPssKb` | {'int': 1570} |
| `desktopPssKb` | {'int': 1570} |
| `hostPssKb` | {'int': 1570} |
| `kind` | {'str': 1570} |
| `memAvailableKb` | {'int': 1570} |
| `memTotalKb` | {'int': 1570} |
| `otherPssKb` | {'int': 1570} |
| `processes` | {'int': 1570} |
| `pssFallbackProcesses` | {'int': 1570} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
