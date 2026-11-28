# sandbox_telemetry_parse — 2026-11-28 11:19:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=863853 lines=1916
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1908 |
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
| `chromeBrowserPssKb` | {'int': 1908} |
| `chromeGpuPssKb` | {'int': 1908} |
| `chromeOtherPssKb` | {'int': 1908} |
| `chromeProcesses` | {'int': 1908} |
| `chromeProfiles` | {'int': 1908} |
| `chromeRendererMaxPssKb` | {'int': 1908} |
| `chromeRendererPssKb` | {'int': 1908} |
| `chromeRenderers` | {'int': 1908} |
| `chromeTabs` | {'int': 1908} |
| `chromeTabsProbedProfiles` | {'int': 1908} |
| `chromeUtilityPssKb` | {'int': 1908} |
| `desktopPssKb` | {'int': 1908} |
| `hostPssKb` | {'int': 1908} |
| `kind` | {'str': 1908} |
| `memAvailableKb` | {'int': 1908} |
| `memTotalKb` | {'int': 1908} |
| `otherPssKb` | {'int': 1908} |
| `processes` | {'int': 1908} |
| `pssFallbackProcesses` | {'int': 1908} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
