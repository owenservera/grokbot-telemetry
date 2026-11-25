# sandbox_telemetry_parse — 2026-11-25 16:42:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2837024 lines=6285
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6270 |
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
| `chromeBrowserPssKb` | {'int': 6270} |
| `chromeGpuPssKb` | {'int': 6270} |
| `chromeOtherPssKb` | {'int': 6270} |
| `chromeProcesses` | {'int': 6270} |
| `chromeProfiles` | {'int': 6270} |
| `chromeRendererMaxPssKb` | {'int': 6270} |
| `chromeRendererPssKb` | {'int': 6270} |
| `chromeRenderers` | {'int': 6270} |
| `chromeTabs` | {'int': 6270} |
| `chromeTabsProbedProfiles` | {'int': 6270} |
| `chromeUtilityPssKb` | {'int': 6270} |
| `desktopPssKb` | {'int': 6270} |
| `hostPssKb` | {'int': 6270} |
| `kind` | {'str': 6270} |
| `memAvailableKb` | {'int': 6270} |
| `memTotalKb` | {'int': 6270} |
| `otherPssKb` | {'int': 6270} |
| `processes` | {'int': 6270} |
| `pssFallbackProcesses` | {'int': 6270} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
