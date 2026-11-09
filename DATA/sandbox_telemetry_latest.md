# sandbox_telemetry_parse — 2026-11-09 23:13:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=881999 lines=1957
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1948 |
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
| `chromeBrowserPssKb` | {'int': 1948} |
| `chromeGpuPssKb` | {'int': 1948} |
| `chromeOtherPssKb` | {'int': 1948} |
| `chromeProcesses` | {'int': 1948} |
| `chromeProfiles` | {'int': 1948} |
| `chromeRendererMaxPssKb` | {'int': 1948} |
| `chromeRendererPssKb` | {'int': 1948} |
| `chromeRenderers` | {'int': 1948} |
| `chromeTabs` | {'int': 1948} |
| `chromeTabsProbedProfiles` | {'int': 1948} |
| `chromeUtilityPssKb` | {'int': 1948} |
| `desktopPssKb` | {'int': 1948} |
| `hostPssKb` | {'int': 1948} |
| `kind` | {'str': 1948} |
| `memAvailableKb` | {'int': 1948} |
| `memTotalKb` | {'int': 1948} |
| `otherPssKb` | {'int': 1948} |
| `processes` | {'int': 1948} |
| `pssFallbackProcesses` | {'int': 1948} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
