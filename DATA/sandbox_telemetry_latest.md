# sandbox_telemetry_parse — 2026-11-11 14:54:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1681976 lines=3725
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3716 |
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
| `chromeBrowserPssKb` | {'int': 3716} |
| `chromeGpuPssKb` | {'int': 3716} |
| `chromeOtherPssKb` | {'int': 3716} |
| `chromeProcesses` | {'int': 3716} |
| `chromeProfiles` | {'int': 3716} |
| `chromeRendererMaxPssKb` | {'int': 3716} |
| `chromeRendererPssKb` | {'int': 3716} |
| `chromeRenderers` | {'int': 3716} |
| `chromeTabs` | {'int': 3716} |
| `chromeTabsProbedProfiles` | {'int': 3716} |
| `chromeUtilityPssKb` | {'int': 3716} |
| `desktopPssKb` | {'int': 3716} |
| `hostPssKb` | {'int': 3716} |
| `kind` | {'str': 3716} |
| `memAvailableKb` | {'int': 3716} |
| `memTotalKb` | {'int': 3716} |
| `otherPssKb` | {'int': 3716} |
| `processes` | {'int': 3716} |
| `pssFallbackProcesses` | {'int': 3716} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
