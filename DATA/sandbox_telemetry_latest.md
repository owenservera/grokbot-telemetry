# sandbox_telemetry_parse — 2026-11-10 20:44:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1312823 lines=2909
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2900 |
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
| `chromeBrowserPssKb` | {'int': 2900} |
| `chromeGpuPssKb` | {'int': 2900} |
| `chromeOtherPssKb` | {'int': 2900} |
| `chromeProcesses` | {'int': 2900} |
| `chromeProfiles` | {'int': 2900} |
| `chromeRendererMaxPssKb` | {'int': 2900} |
| `chromeRendererPssKb` | {'int': 2900} |
| `chromeRenderers` | {'int': 2900} |
| `chromeTabs` | {'int': 2900} |
| `chromeTabsProbedProfiles` | {'int': 2900} |
| `chromeUtilityPssKb` | {'int': 2900} |
| `desktopPssKb` | {'int': 2900} |
| `hostPssKb` | {'int': 2900} |
| `kind` | {'str': 2900} |
| `memAvailableKb` | {'int': 2900} |
| `memTotalKb` | {'int': 2900} |
| `otherPssKb` | {'int': 2900} |
| `processes` | {'int': 2900} |
| `pssFallbackProcesses` | {'int': 2900} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
