# sandbox_telemetry_parse — 2026-11-20 13:51:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1741978 lines=3861
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3850 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3850} |
| `chromeGpuPssKb` | {'int': 3850} |
| `chromeOtherPssKb` | {'int': 3850} |
| `chromeProcesses` | {'int': 3850} |
| `chromeProfiles` | {'int': 3850} |
| `chromeRendererMaxPssKb` | {'int': 3850} |
| `chromeRendererPssKb` | {'int': 3850} |
| `chromeRenderers` | {'int': 3850} |
| `chromeTabs` | {'int': 3850} |
| `chromeTabsProbedProfiles` | {'int': 3850} |
| `chromeUtilityPssKb` | {'int': 3850} |
| `desktopPssKb` | {'int': 3850} |
| `hostPssKb` | {'int': 3850} |
| `kind` | {'str': 3850} |
| `memAvailableKb` | {'int': 3850} |
| `memTotalKb` | {'int': 3850} |
| `otherPssKb` | {'int': 3850} |
| `processes` | {'int': 3850} |
| `pssFallbackProcesses` | {'int': 3850} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
