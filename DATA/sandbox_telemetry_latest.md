# sandbox_telemetry_parse — 2026-11-24 04:48:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2134113 lines=4731
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4716 |
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
| `chromeBrowserPssKb` | {'int': 4716} |
| `chromeGpuPssKb` | {'int': 4716} |
| `chromeOtherPssKb` | {'int': 4716} |
| `chromeProcesses` | {'int': 4716} |
| `chromeProfiles` | {'int': 4716} |
| `chromeRendererMaxPssKb` | {'int': 4716} |
| `chromeRendererPssKb` | {'int': 4716} |
| `chromeRenderers` | {'int': 4716} |
| `chromeTabs` | {'int': 4716} |
| `chromeTabsProbedProfiles` | {'int': 4716} |
| `chromeUtilityPssKb` | {'int': 4716} |
| `desktopPssKb` | {'int': 4716} |
| `hostPssKb` | {'int': 4716} |
| `kind` | {'str': 4716} |
| `memAvailableKb` | {'int': 4716} |
| `memTotalKb` | {'int': 4716} |
| `otherPssKb` | {'int': 4716} |
| `processes` | {'int': 4716} |
| `pssFallbackProcesses` | {'int': 4716} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
