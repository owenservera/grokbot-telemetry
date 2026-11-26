# sandbox_telemetry_parse — 2026-11-26 11:32:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3231926 lines=7158
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7143 |
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
| `chromeBrowserPssKb` | {'int': 7143} |
| `chromeGpuPssKb` | {'int': 7143} |
| `chromeOtherPssKb` | {'int': 7143} |
| `chromeProcesses` | {'int': 7143} |
| `chromeProfiles` | {'int': 7143} |
| `chromeRendererMaxPssKb` | {'int': 7143} |
| `chromeRendererPssKb` | {'int': 7143} |
| `chromeRenderers` | {'int': 7143} |
| `chromeTabs` | {'int': 7143} |
| `chromeTabsProbedProfiles` | {'int': 7143} |
| `chromeUtilityPssKb` | {'int': 7143} |
| `desktopPssKb` | {'int': 7143} |
| `hostPssKb` | {'int': 7143} |
| `kind` | {'str': 7143} |
| `memAvailableKb` | {'int': 7143} |
| `memTotalKb` | {'int': 7143} |
| `otherPssKb` | {'int': 7143} |
| `processes` | {'int': 7143} |
| `pssFallbackProcesses` | {'int': 7143} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
