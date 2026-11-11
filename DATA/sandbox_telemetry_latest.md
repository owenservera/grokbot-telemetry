# sandbox_telemetry_parse — 2026-11-11 05:02:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1480194 lines=3279
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3270 |
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
| `chromeBrowserPssKb` | {'int': 3270} |
| `chromeGpuPssKb` | {'int': 3270} |
| `chromeOtherPssKb` | {'int': 3270} |
| `chromeProcesses` | {'int': 3270} |
| `chromeProfiles` | {'int': 3270} |
| `chromeRendererMaxPssKb` | {'int': 3270} |
| `chromeRendererPssKb` | {'int': 3270} |
| `chromeRenderers` | {'int': 3270} |
| `chromeTabs` | {'int': 3270} |
| `chromeTabsProbedProfiles` | {'int': 3270} |
| `chromeUtilityPssKb` | {'int': 3270} |
| `desktopPssKb` | {'int': 3270} |
| `hostPssKb` | {'int': 3270} |
| `kind` | {'str': 3270} |
| `memAvailableKb` | {'int': 3270} |
| `memTotalKb` | {'int': 3270} |
| `otherPssKb` | {'int': 3270} |
| `processes` | {'int': 3270} |
| `pssFallbackProcesses` | {'int': 3270} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
