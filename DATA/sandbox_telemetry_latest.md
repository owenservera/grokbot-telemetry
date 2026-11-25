# sandbox_telemetry_parse — 2026-11-25 01:42:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2539462 lines=5627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5612 |
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
| `chromeBrowserPssKb` | {'int': 5612} |
| `chromeGpuPssKb` | {'int': 5612} |
| `chromeOtherPssKb` | {'int': 5612} |
| `chromeProcesses` | {'int': 5612} |
| `chromeProfiles` | {'int': 5612} |
| `chromeRendererMaxPssKb` | {'int': 5612} |
| `chromeRendererPssKb` | {'int': 5612} |
| `chromeRenderers` | {'int': 5612} |
| `chromeTabs` | {'int': 5612} |
| `chromeTabsProbedProfiles` | {'int': 5612} |
| `chromeUtilityPssKb` | {'int': 5612} |
| `desktopPssKb` | {'int': 5612} |
| `hostPssKb` | {'int': 5612} |
| `kind` | {'str': 5612} |
| `memAvailableKb` | {'int': 5612} |
| `memTotalKb` | {'int': 5612} |
| `otherPssKb` | {'int': 5612} |
| `processes` | {'int': 5612} |
| `pssFallbackProcesses` | {'int': 5612} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
