# sandbox_telemetry_parse — 2026-11-28 12:40:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=889181 lines=1972
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1964 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1964} |
| `chromeGpuPssKb` | {'int': 1964} |
| `chromeOtherPssKb` | {'int': 1964} |
| `chromeProcesses` | {'int': 1964} |
| `chromeProfiles` | {'int': 1964} |
| `chromeRendererMaxPssKb` | {'int': 1964} |
| `chromeRendererPssKb` | {'int': 1964} |
| `chromeRenderers` | {'int': 1964} |
| `chromeTabs` | {'int': 1964} |
| `chromeTabsProbedProfiles` | {'int': 1964} |
| `chromeUtilityPssKb` | {'int': 1964} |
| `desktopPssKb` | {'int': 1964} |
| `hostPssKb` | {'int': 1964} |
| `kind` | {'str': 1964} |
| `memAvailableKb` | {'int': 1964} |
| `memTotalKb` | {'int': 1964} |
| `otherPssKb` | {'int': 1964} |
| `processes` | {'int': 1964} |
| `pssFallbackProcesses` | {'int': 1964} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
