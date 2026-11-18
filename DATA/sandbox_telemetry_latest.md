# sandbox_telemetry_parse — 2026-11-18 04:09:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=671576 lines=1491
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1484 |
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
| `chromeBrowserPssKb` | {'int': 1484} |
| `chromeGpuPssKb` | {'int': 1484} |
| `chromeOtherPssKb` | {'int': 1484} |
| `chromeProcesses` | {'int': 1484} |
| `chromeProfiles` | {'int': 1484} |
| `chromeRendererMaxPssKb` | {'int': 1484} |
| `chromeRendererPssKb` | {'int': 1484} |
| `chromeRenderers` | {'int': 1484} |
| `chromeTabs` | {'int': 1484} |
| `chromeTabsProbedProfiles` | {'int': 1484} |
| `chromeUtilityPssKb` | {'int': 1484} |
| `desktopPssKb` | {'int': 1484} |
| `hostPssKb` | {'int': 1484} |
| `kind` | {'str': 1484} |
| `memAvailableKb` | {'int': 1484} |
| `memTotalKb` | {'int': 1484} |
| `otherPssKb` | {'int': 1484} |
| `processes` | {'int': 1484} |
| `pssFallbackProcesses` | {'int': 1484} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
