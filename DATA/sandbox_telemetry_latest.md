# sandbox_telemetry_parse — 2026-10-27 12:44:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=520462 lines=1154
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1149 |
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
| `chromeBrowserPssKb` | {'int': 1149} |
| `chromeGpuPssKb` | {'int': 1149} |
| `chromeOtherPssKb` | {'int': 1149} |
| `chromeProcesses` | {'int': 1149} |
| `chromeProfiles` | {'int': 1149} |
| `chromeRendererMaxPssKb` | {'int': 1149} |
| `chromeRendererPssKb` | {'int': 1149} |
| `chromeRenderers` | {'int': 1149} |
| `chromeTabs` | {'int': 1149} |
| `chromeTabsProbedProfiles` | {'int': 1149} |
| `chromeUtilityPssKb` | {'int': 1149} |
| `desktopPssKb` | {'int': 1149} |
| `hostPssKb` | {'int': 1149} |
| `kind` | {'str': 1149} |
| `memAvailableKb` | {'int': 1149} |
| `memTotalKb` | {'int': 1149} |
| `otherPssKb` | {'int': 1149} |
| `processes` | {'int': 1149} |
| `pssFallbackProcesses` | {'int': 1149} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
