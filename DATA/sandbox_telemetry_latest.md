# sandbox_telemetry_parse — 2026-11-09 10:32:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=614066 lines=1365
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1356 |
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
| `chromeBrowserPssKb` | {'int': 1356} |
| `chromeGpuPssKb` | {'int': 1356} |
| `chromeOtherPssKb` | {'int': 1356} |
| `chromeProcesses` | {'int': 1356} |
| `chromeProfiles` | {'int': 1356} |
| `chromeRendererMaxPssKb` | {'int': 1356} |
| `chromeRendererPssKb` | {'int': 1356} |
| `chromeRenderers` | {'int': 1356} |
| `chromeTabs` | {'int': 1356} |
| `chromeTabsProbedProfiles` | {'int': 1356} |
| `chromeUtilityPssKb` | {'int': 1356} |
| `desktopPssKb` | {'int': 1356} |
| `hostPssKb` | {'int': 1356} |
| `kind` | {'str': 1356} |
| `memAvailableKb` | {'int': 1356} |
| `memTotalKb` | {'int': 1356} |
| `otherPssKb` | {'int': 1356} |
| `processes` | {'int': 1356} |
| `pssFallbackProcesses` | {'int': 1356} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
