# sandbox_telemetry_parse — 2026-10-27 10:11:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=459760 lines=1020
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1015 |
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
| `chromeBrowserPssKb` | {'int': 1015} |
| `chromeGpuPssKb` | {'int': 1015} |
| `chromeOtherPssKb` | {'int': 1015} |
| `chromeProcesses` | {'int': 1015} |
| `chromeProfiles` | {'int': 1015} |
| `chromeRendererMaxPssKb` | {'int': 1015} |
| `chromeRendererPssKb` | {'int': 1015} |
| `chromeRenderers` | {'int': 1015} |
| `chromeTabs` | {'int': 1015} |
| `chromeTabsProbedProfiles` | {'int': 1015} |
| `chromeUtilityPssKb` | {'int': 1015} |
| `desktopPssKb` | {'int': 1015} |
| `hostPssKb` | {'int': 1015} |
| `kind` | {'str': 1015} |
| `memAvailableKb` | {'int': 1015} |
| `memTotalKb` | {'int': 1015} |
| `otherPssKb` | {'int': 1015} |
| `processes` | {'int': 1015} |
| `pssFallbackProcesses` | {'int': 1015} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
