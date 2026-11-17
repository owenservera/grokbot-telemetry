# sandbox_telemetry_parse — 2026-11-17 19:27:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=506517 lines=1126
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1119 |
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
| `chromeBrowserPssKb` | {'int': 1119} |
| `chromeGpuPssKb` | {'int': 1119} |
| `chromeOtherPssKb` | {'int': 1119} |
| `chromeProcesses` | {'int': 1119} |
| `chromeProfiles` | {'int': 1119} |
| `chromeRendererMaxPssKb` | {'int': 1119} |
| `chromeRendererPssKb` | {'int': 1119} |
| `chromeRenderers` | {'int': 1119} |
| `chromeTabs` | {'int': 1119} |
| `chromeTabsProbedProfiles` | {'int': 1119} |
| `chromeUtilityPssKb` | {'int': 1119} |
| `desktopPssKb` | {'int': 1119} |
| `hostPssKb` | {'int': 1119} |
| `kind` | {'str': 1119} |
| `memAvailableKb` | {'int': 1119} |
| `memTotalKb` | {'int': 1119} |
| `otherPssKb` | {'int': 1119} |
| `processes` | {'int': 1119} |
| `pssFallbackProcesses` | {'int': 1119} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
