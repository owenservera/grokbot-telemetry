# sandbox_telemetry_parse — 2026-10-27 08:12:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=408660 lines=907
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 902 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 902} |
| `chromeGpuPssKb` | {'int': 902} |
| `chromeOtherPssKb` | {'int': 902} |
| `chromeProcesses` | {'int': 902} |
| `chromeProfiles` | {'int': 902} |
| `chromeRendererMaxPssKb` | {'int': 902} |
| `chromeRendererPssKb` | {'int': 902} |
| `chromeRenderers` | {'int': 902} |
| `chromeTabs` | {'int': 902} |
| `chromeTabsProbedProfiles` | {'int': 902} |
| `chromeUtilityPssKb` | {'int': 902} |
| `desktopPssKb` | {'int': 902} |
| `hostPssKb` | {'int': 902} |
| `kind` | {'str': 902} |
| `memAvailableKb` | {'int': 902} |
| `memTotalKb` | {'int': 902} |
| `otherPssKb` | {'int': 902} |
| `processes` | {'int': 902} |
| `pssFallbackProcesses` | {'int': 902} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
