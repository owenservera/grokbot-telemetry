# sandbox_telemetry_parse — 2026-11-28 10:22:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=844396 lines=1873
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1865 |
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
| `chromeBrowserPssKb` | {'int': 1865} |
| `chromeGpuPssKb` | {'int': 1865} |
| `chromeOtherPssKb` | {'int': 1865} |
| `chromeProcesses` | {'int': 1865} |
| `chromeProfiles` | {'int': 1865} |
| `chromeRendererMaxPssKb` | {'int': 1865} |
| `chromeRendererPssKb` | {'int': 1865} |
| `chromeRenderers` | {'int': 1865} |
| `chromeTabs` | {'int': 1865} |
| `chromeTabsProbedProfiles` | {'int': 1865} |
| `chromeUtilityPssKb` | {'int': 1865} |
| `desktopPssKb` | {'int': 1865} |
| `hostPssKb` | {'int': 1865} |
| `kind` | {'str': 1865} |
| `memAvailableKb` | {'int': 1865} |
| `memTotalKb` | {'int': 1865} |
| `otherPssKb` | {'int': 1865} |
| `processes` | {'int': 1865} |
| `pssFallbackProcesses` | {'int': 1865} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
