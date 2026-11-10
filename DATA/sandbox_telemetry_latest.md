# sandbox_telemetry_parse — 2026-11-10 13:09:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1149837 lines=2549
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2540 |
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
| `chromeBrowserPssKb` | {'int': 2540} |
| `chromeGpuPssKb` | {'int': 2540} |
| `chromeOtherPssKb` | {'int': 2540} |
| `chromeProcesses` | {'int': 2540} |
| `chromeProfiles` | {'int': 2540} |
| `chromeRendererMaxPssKb` | {'int': 2540} |
| `chromeRendererPssKb` | {'int': 2540} |
| `chromeRenderers` | {'int': 2540} |
| `chromeTabs` | {'int': 2540} |
| `chromeTabsProbedProfiles` | {'int': 2540} |
| `chromeUtilityPssKb` | {'int': 2540} |
| `desktopPssKb` | {'int': 2540} |
| `hostPssKb` | {'int': 2540} |
| `kind` | {'str': 2540} |
| `memAvailableKb` | {'int': 2540} |
| `memTotalKb` | {'int': 2540} |
| `otherPssKb` | {'int': 2540} |
| `processes` | {'int': 2540} |
| `pssFallbackProcesses` | {'int': 2540} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
