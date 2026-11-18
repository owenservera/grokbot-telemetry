# sandbox_telemetry_parse — 2026-11-18 20:09:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=960748 lines=2132
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2123 |
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
| `chromeBrowserPssKb` | {'int': 2123} |
| `chromeGpuPssKb` | {'int': 2123} |
| `chromeOtherPssKb` | {'int': 2123} |
| `chromeProcesses` | {'int': 2123} |
| `chromeProfiles` | {'int': 2123} |
| `chromeRendererMaxPssKb` | {'int': 2123} |
| `chromeRendererPssKb` | {'int': 2123} |
| `chromeRenderers` | {'int': 2123} |
| `chromeTabs` | {'int': 2123} |
| `chromeTabsProbedProfiles` | {'int': 2123} |
| `chromeUtilityPssKb` | {'int': 2123} |
| `desktopPssKb` | {'int': 2123} |
| `hostPssKb` | {'int': 2123} |
| `kind` | {'str': 2123} |
| `memAvailableKb` | {'int': 2123} |
| `memTotalKb` | {'int': 2123} |
| `otherPssKb` | {'int': 2123} |
| `processes` | {'int': 2123} |
| `pssFallbackProcesses` | {'int': 2123} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
