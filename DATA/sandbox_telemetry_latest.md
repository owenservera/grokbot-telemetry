# sandbox_telemetry_parse — 2026-11-25 04:12:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2586491 lines=5731
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5716 |
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
| `chromeBrowserPssKb` | {'int': 5716} |
| `chromeGpuPssKb` | {'int': 5716} |
| `chromeOtherPssKb` | {'int': 5716} |
| `chromeProcesses` | {'int': 5716} |
| `chromeProfiles` | {'int': 5716} |
| `chromeRendererMaxPssKb` | {'int': 5716} |
| `chromeRendererPssKb` | {'int': 5716} |
| `chromeRenderers` | {'int': 5716} |
| `chromeTabs` | {'int': 5716} |
| `chromeTabsProbedProfiles` | {'int': 5716} |
| `chromeUtilityPssKb` | {'int': 5716} |
| `desktopPssKb` | {'int': 5716} |
| `hostPssKb` | {'int': 5716} |
| `kind` | {'str': 5716} |
| `memAvailableKb` | {'int': 5716} |
| `memTotalKb` | {'int': 5716} |
| `otherPssKb` | {'int': 5716} |
| `processes` | {'int': 5716} |
| `pssFallbackProcesses` | {'int': 5716} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
